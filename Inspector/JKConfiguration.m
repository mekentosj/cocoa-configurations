//
//  JKConfiguration.m
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.

#import "JKConfiguration.h"


@implementation JKConfiguration

@synthesize height = _height;

- (instancetype)init
{
	if (self = [super init])
    {
		_children = nil;
	}
	return self;
}

- (instancetype)initWithNibName:(NSString *)name height:(CGFloat)height
{
	if (self = [super init])
    {        
		_children = nil;
		_nibName = name;
        _height = height;
	}
	return self;
}

- (instancetype)initWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary
{
	if (self = [super init])
    {
		_children = nil;
		_nibName = name;
        _modes = modesDictionary;
        
        // default mode
        _mode = @"normal";
	}
	return self;
}


+ (instancetype)configuration
{
	return [[self alloc] init];
}

+ (instancetype)configurationWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary
{
	return [[self alloc] initWithNibName:name modes:modesDictionary];
}

+ (instancetype)configurationWithNibName:(NSString *)name height:(CGFloat)height;
{
    return [[self alloc] initWithNibName:name height:height];
}

- (CGFloat)height
{
    // if a modes dictionary is set, return the height from the currently selected mode
    if (_modes)
    {
        return [_modes[_mode][@"height"] floatValue];
    }
    
    return _height;
}

- (void)setHeight:(CGFloat)height
{
    _height = height;
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"<%@>", NSStringFromClass([self class])];
}

@end


#pragma mark -
#pragma mark -

@implementation JKConfigurationGroup

- (id)initWithTitle:(NSString *)title
{
	if (self = [super init])
    {
		_title = title;
	}
	return self;
}

+ (id)configurationWithTitle:(NSString *)title
{
	return [[self alloc] initWithTitle:title];
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@: %@>", NSStringFromClass([self class]), self.title];
}

@end

