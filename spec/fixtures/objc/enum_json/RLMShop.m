// DO NOT EDIT | Generated by dbgenerator

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Imports

#import "RLMShop.h"

#pragma mark - Defines & Constants

const struct RLMShopAttributes RLMShopAttributes = {
    .name = @"name",
    .type = @"type",
    .typeOptional = @"typeOptional"
};

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Implementation

@implementation RLMShop

#pragma mark - Superclass Overrides

// Specify required properties
+ (NSArray *)requiredProperties
{
    return @[@"name", @"type"];
}

// Specify default values for required properties
+ (NSDictionary *)defaultPropertyValues
{
    return @{@"name" : @"", @"type" : @(0)};
}

@end
