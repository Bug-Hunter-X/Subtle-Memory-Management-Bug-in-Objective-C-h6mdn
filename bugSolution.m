@interface MyClass : NSObject
@property (nonatomic, copy) NSString *myString;
@end

@implementation MyClass
// dealloc is no longer needed because of copy
@end

// ... elsewhere in your code ...
MyClass *myObject = [[MyClass alloc] init];
myObject.myString = [[NSString alloc] initWithString:@