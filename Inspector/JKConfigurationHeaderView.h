//
//  JKConfigurationHeaderView.h
//  ShapeFactory
//
//  Created by Joris Kluivers on 4/14/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JKConfigurationHeaderView : NSTableCellView

@property (weak) IBOutlet NSTextField *labelTextField;

@property (strong) NSColor *headerGradientStartColor;
@property (strong) NSColor *headerGradientEndColor;

@end
