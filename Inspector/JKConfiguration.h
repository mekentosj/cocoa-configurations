//
//  JKConfiguration.h
//  Inspector
//
//  Created by Joris Kluivers on 12/26/12.
//  Copyright (c) 2012 Joris Kluivers. All rights reserved.

#import <Foundation/Foundation.h>

@interface JKConfiguration : NSObject

@property (strong) NSArray *children;
@property (strong) NSString *nibName;

@property (strong) NSDictionary *modes;
@property (copy) NSString *mode;

@property (assign) CGFloat height;

@property (weak) id itemController;

// you can either pass in a modes dictionary, that then also determine the height for each mode
// or simply pass in a fixed height

+ (instancetype)configuration;
+ (instancetype)configurationWithNibName:(NSString *)name height:(CGFloat)height;
+ (instancetype)configurationWithNibName:(NSString *)name modes:(NSDictionary *)modesDictionary;

@end


#pragma mark -

@interface JKConfigurationGroup : JKConfiguration

@property(strong) NSString *title;

+ (instancetype)configurationWithTitle:(NSString *)title;

@end
