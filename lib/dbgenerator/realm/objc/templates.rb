module DBGenerator
  module Realm
    module ObjC
      module Templates

        # IMPORTS
        IMPORT_REALM = '#import <Realm/Realm.h>'
        IMPORT_HEADER = '#import "%s.h"'
        IMPORT_REALM_JSON_LIBRARY = '#import <Realm+JSON/RLMObject+JSON.h>'
        IMPORT_REALM_JSON_FRAMEWORK = '#import "RLMObject+JSON.h"'


        # PRAGMA
        PRAGMA_MARK_IMPORTS = '#pragma mark - Imports'
        PRAGMA_MARK_TYPES = '#pragma mark - Types'
        PRAGMA_MARK_CONSTANTS = '#pragma mark - Defines & Constants'
        PRAGMA_MARK_INTERFACE = '#pragma mark - Interface'
        PRAGMA_MARK_PROPERTIES = '#pragma mark - Properties'
        PRAGMA_MARK_PROTOCOLS = '#pragma mark - Protocols'
        PRAGMA_MARK_IMPLEMENTATION = '#pragma mark - Implementation'
        PRAGMA_MARK_NUMBER_ACCESSORS = '#pragma mark - NSNumber Convenience Accessors'
        PRAGMA_MARK_SUPER = '#pragma mark - Superclass Overrides'

        # COMMONS
        GENERATED_MESSAGE = '// DO NOT EDIT | Generated by dbgenerator'
        END_CODE = '@end'
        SEPARATOR = '////////////////////////////////////////////////////////////////////////////////'
        DICTIONARY_JSON = '@%s : @%s,'
        DICTIONARY_DEFAULT = '@%s : %s,'
        DICTIONARY_JSON_CATEGORY = '%s : @%s,'

        # HEADER
        HEADER_TEMPLATE = '%s.h'
        NUMBER_TRANSFORMER_FILE_NAME = 'NFNumberTransformer'
        CLASS_COMMENT_TEMPLATE = "/**\n * %s\n */"
        CLASS_TEMPLATE = '@class %s;'
        INTERFACE_TEMPLATE = '@interface %s : RLMObject'
        PROPERTY_COMMENT_TEMPLATE = '/** %s */'
        SIMPLE_PROPERTY_TEMPLATE = '@property %s%s;'
        OBJECT_PROPERTY_TEMPLATE = '@property %s *%s;'
        NUMBER_ACCESSOR_DECL_TEMPLATES = "-(%s)%sValue;\n-(void)set%sValue:(%s)value;\n"
        LIST_TEMPLATE = 'NSArray<%s>'
        REALM_LIST_TYPE_TEMPLATE = "// This protocol enables typed collections. i.e.: RLMArray<%s>\nRLM_ARRAY_TYPE(%s)"
        REALM_LIST_TEMPLATE = 'RLMArray<%s>'

        # COMMONS
        CONSTANT_ATTRIBUTES_NAME = '%sAttributes'
        CONSTANT_RELATIONSHIPS_NAME = '%sRelationships'
        CONSTANT_HEADER_ATTRIBUTES = 'extern const struct %s {'
        CONSTANT_HEADER_RELATIONSHIPS = 'extern const struct %s {'
        CONSTANT_HEADER_ITEM = '__unsafe_unretained NSString *%s;'
        CONSTANT_SOURCE_ATTRIBUTES = 'const struct %s %s = {'
        CONSTANT_SOURCE_RELATIONSHIPS = 'const struct %s %s = {'
        CONSTANT_SOURCE_ITEM = '.%s = @"%s"'

        # ENUM
        ENUM_TYPEDEF_TEMPLATE = 'typedef NS_ENUM(%s, %s) {'
        ENUM_FILE_NAME = 'RLMTypes'
        PROTOCOL_FILE_NAME = 'RLMProtocols'

        # SOURCE
        SOURCE_TEMPLATE = '%s.m'
        IMPLEMENTATION_TEMPLATE = '@implementation %s'
        ARRAY_TEMPLATE ='@%s, '
        READ_ONLY_DEF_TEMPLATE = '- (%s)%s'
        NUMBER_ACCESSOR_SOURCE_TEMPLATES = "-(%s)%sValue\n{\n    return [self.%s %s];\n}\n-(void)set%sValue:(%s)value\n{\n    self.%s = @(value);\n}"
        INVERSE_DEF_TEMPLATE = '- (%s *)%s'
        INVERSE_MANY_TEMPLATE = 'return [self linkingObjectsOfClass:@"%s" forProperty:@"%s"];'
        INVERSE_ONE_TEMPLATE =  'return [[self linkingObjectsOfClass:@"%s" forProperty:@"%s"] objectAtIndex:0];'

        # JSON_CATEGORY
        JSON_CATEGORY_NAME = '%s+JSON'
        JSON_TRANSFORMER_DEF = '+ (NSValueTransformer *)%sJSONTransformer'
        JSON_CATEGORY_IMPLEMENTATION = '@implementation %s (JSON)'
        JSON_CATEGORY_INTERFACE = '@interface %s (JSON)'
        TRANSFORMER_BOOL_JSON = ['@"null"', '[NSNull null]', '@"false"', '@"true"', '@(NO)', '@(YES)']
        TRANSFORMER_BOOL_MODEL = %w(NO NO NO YES NO YES)
        TRANSFORMER_ENUM_JSON = ['@"null"', '[NSNull null]', '@""']
        TRANSFORMER = 'return [[%s alloc] init];'

      end
    end
  end
end
