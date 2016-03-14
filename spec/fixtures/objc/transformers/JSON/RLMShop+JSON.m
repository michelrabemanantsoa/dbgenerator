// DO NOT EDIT | Generated by dbgenerator

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Imports

#import "RLMShop+JSON.h"
#import "MPDecimalTransformer.h"
#import "MPIntegerTransformer.h"

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Implementation

@implementation RLMShop (JSON)

+ (NSDictionary *)JSONInboundMappingDictionary
{
    return @{
        @"attrDecimal" : @"attrDecimal",
        @"attrDouble" : @"attrDouble",
        @"attrFloat" : @"attrFloat",
        @"attrInteger16" : @"attrInteger16",
        @"attrInteger32" : @"attrInteger32",
        @"attrInteger64" : @"attrInteger64"
    };
}

+ (NSDictionary *)JSONOutboundMappingDictionary
{
    return @{
        @"attrDecimal" : @"attrDecimal",
        @"attrDouble" : @"attrDouble",
        @"attrFloat" : @"attrFloat",
        @"attrInteger16" : @"attrInteger16",
        @"attrInteger32" : @"attrInteger32",
        @"attrInteger64" : @"attrInteger64"
    };
}

+ (NSValueTransformer *)attrDecimalJSONTransformer
{
    return [[MPDecimalTransformer alloc] init];
}

+ (NSValueTransformer *)attrFloatJSONTransformer
{
    return [[MPDecimalTransformer alloc] init];
}

+ (NSValueTransformer *)attrInteger16JSONTransformer
{
    return [[MPIntegerTransformer alloc] init];
}

+ (NSValueTransformer *)attrInteger64JSONTransformer
{
    return [[MPIntegerTransformer alloc] init];
}

@end
