// DO NOT EDIT | Generated by dbgenerator

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Imports

#import "RLMOwner.h"

#pragma mark - Defines & Constants

const struct RLMOwnerAttributes RLMOwnerAttributes = {
    .name = @"name"
};

const struct RLMOwnerRelationships RLMOwnerRelationships = {
    .shop = @"shop"
};

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Implementation

@implementation RLMOwner

#pragma mark - Superclass Overrides

// Specify properties to ignore (Realm won't persist these)
+ (NSArray *)ignoredProperties
{
    return @[@"shop"];
}

@end
