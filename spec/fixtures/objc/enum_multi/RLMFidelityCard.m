// DO NOT EDIT | Generated by dbgenerator

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Imports

#import "RLMFidelityCard.h"

#pragma mark - Defines & Constants

const struct RLMFidelityCardAttributes RLMFidelityCardAttributes = {
    .identifier = @"identifier",
    .points = @"points"
};

const struct RLMFidelityCardRelationships RLMFidelityCardRelationships = {
    .user = @"user"
};

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Implementation

@implementation RLMFidelityCard

#pragma mark - Superclass Overrides

// Specify required properties
+ (NSArray *)requiredProperties
{
    return @[@"identifier", @"points"];
}

// Specify default values for required properties
+ (NSDictionary *)defaultPropertyValues
{
    return @{@"identifier" : @(0), @"points" : @(0)};
}

@end
