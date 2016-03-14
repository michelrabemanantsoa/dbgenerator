require File.expand_path('templates', File.dirname(__FILE__))
require File.expand_path('../../utils/string_xcdatamodel', File.dirname(__FILE__))
require File.expand_path('../../utils/file_dbgenerator', File.dirname(__FILE__))

module DBGenerator
  module Realm
    module Java
      module EnumGenerator

        # INCLUDES #############################################################
        include Templates

        # PUBLIC METHODS #######################################################

        def generate_enums(path, package, attributes)
          enums = Array.new
          attributes.each do |_, attribute|
            if attribute.enum? and !enums.include?(attribute.enum_type)
              enum_type = attribute.enum_type.delete_objc_prefix
              enums.push(enum_type)
              generate_enum(path, package, enum_type, attribute.enum_values, attribute.json_values)
            end
          end
        end

        def generate_enum_getter_and_setter(enum_type, attribute_name)
          getter = '    ' + 'public ' + enum_type + ' get'+ attribute_name.capitalize_first_letter + 'Enum() {' + "\n" +
              '        ' + 'return '+ enum_type + '.get(get' + attribute_name.capitalize_first_letter + '());' + "\n" +
              '    ' + '}' + "\n"
          setter = '    ' + 'public void set'+ attribute_name.capitalize_first_letter + 'Enum(' + enum_type + ' ' + attribute_name +') {' + "\n" +
              '        ' + 'this.' + attribute_name + ' = ' + attribute_name + '.getJsonValue();' + "\n" +
              '    ' + '}' + "\n"
          getter + "\n" + setter
        end

        private #################################################################

        def generate_enum(path, package, enum_name, enum_values, json_values)
          enum_file = String.new
          enum_file << PACKAGE_TEMPLATE%[package] + "\n\n"
          enum_file << GENERATED_MESSAGE + "\n\n"
          enum_file << ENUM_TEMPLATE%[enum_name] + "\n\n"
          enum_values = enum_values.split(',')
          json_values = get_json_values(enum_values, json_values).split(',')
          if enum_values.length != 0
            (0..enum_values.length - 1).each { |idx|
              gson_value = json_values[idx]
              enum_value = generate_enum_string(enum_values[idx], gson_value)
              enum_file << (idx != enum_values.length - 1 ? enum_value + ",\n" : enum_value + ";\n")
            }
            enum_file << "\n" '    ' + ATTRIBUTE_TEMPLATE%%w(String jsonValue) + "\n\n"
            enum_file << generate_enum_gson_constructor(enum_name) + "\n"
            enum_file << generate_static_gson_getter(enum_name) + "\n"
            enum_file << generate_gson_getter
            enum_file << '}' + "\n"
            File.write_file_with_name(path, JAVA_FILE_TEMPLATE%[enum_name], enum_file)
          end
        end

        def generate_enum_string(enum_value, gson_value)
          enum_value = enum_value.delete_objc_prefix.camel_case
          gson_annotation = gson_value.empty? ? '' : ENUM_JSON_VALUE%[gson_value]
          '    ' + enum_value + gson_annotation
        end

        def generate_enum_gson_constructor(enum_name)
          '    ' + enum_name +'(String jsonValue) {' + "\n" +
              '        ' + 'this.jsonValue = jsonValue;' + "\n" +
              '    ' + '}' + "\n"
        end

        # Methods to bypass enum restriction in Realm
        def generate_static_gson_getter(enum_name)
          '    ' + 'public static ' + enum_name + ' get(String jsonValue) {' + "\n" +
              '        ' + 'for (' + enum_name + ' type : ' + enum_name + '.values()) {' + "\n" +
              '            ' + 'if (type.getJsonValue().equals(jsonValue)) {' + "\n" +
              '                ' + 'return type;' + "\n" +
              '            ' + '}'+ "\n" +
              '        ' + '}' + "\n" +
              '        ' + 'return null;' + "\n" +
              '    ' + '}' + "\n"
        end

        def generate_gson_getter()
          '    ' + 'public String getJsonValue() {' + "\n" +
              '        ' + 'return jsonValue;' + "\n" +
              '    ' + '}' + "\n"
        end

        def get_json_values(enum_values, json_values)
          if json_values.empty?
            enum_values.each_with_index { |value, idx|
              value = value.delete_objc_prefix.underscore
              json_values << (idx != enum_values.size - 1 ? value + ',' : value)
            }
          end
          json_values
        end

      end
    end
  end
end
