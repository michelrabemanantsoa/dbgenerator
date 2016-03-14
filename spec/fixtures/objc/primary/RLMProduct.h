// DO NOT EDIT | Generated by dbgenerator

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Imports

#import <Realm/Realm.h>

#pragma mark - Defines & Constants

extern const struct RLMProductAttributes {
    __unsafe_unretained NSString *brand;
    __unsafe_unretained NSString *name;
    __unsafe_unretained NSString *price;
} RLMProductAttributes;

////////////////////////////////////////////////////////////////////////////////

#pragma mark - Interface

@interface RLMProduct : RLMObject

#pragma mark - Properties

@property NSString *brand;
@property NSString *name;
@property long price;

@end
