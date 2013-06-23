//
//  JKConfigurationHeaderView.m
//  ShapeFactory
//
//  Created by Joris Kluivers on 4/14/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.

#import "JKConfigurationHeaderView.h"
#import "MTShadowTextField.h"
#import "NSColor_Extensions.h"

@implementation JKConfigurationHeaderView
{
	BOOL _pressed;
}

- (id)initWithFrame:(NSRect)frameRect
{
    if (self = [super initWithFrame:frameRect])
    {
        // add the header label
        NSTextField *textField = [[MTShadowTextField alloc] initWithFrame:self.bounds];
        textField.frame = NSMakeRect(13.0, 8.0, 200.0, 17.0);
        textField.textColor = [NSColor colorWithCalibratedWhite:0.55 alpha:1.0];
        textField.font = [NSFont systemFontOfSize:12.0];
        textField.drawsBackground = NO;
        textField.editable = NO;
        textField.selectable = NO;
        textField.bordered = NO;
        [self addSubview:textField];
        
        self.labelTextField = textField;
    }
    return self;
}

- (void)updateState
{
	self.labelTextField.textColor = [NSColor colorWithCalibratedWhite:(_pressed ? 0.35 : 0.55) alpha:1.0];
}

- (void)mouseDown:(NSEvent *)theEvent
{
	_pressed = YES;
	[self updateState];
    
    [super mouseDown:theEvent];
}

- (void)mouseDragged:(NSEvent *)theEvent
{
	NSPoint point = [self convertPoint:[theEvent locationInWindow] fromView:nil];
	_pressed = NSMouseInRect(point, [self bounds], [self isFlipped]);
	[self updateState];
    
    [super mouseDragged:theEvent];
}

- (void)mouseUp:(NSEvent *)theEvent
{
    _pressed = NO;
    [self updateState];
    
    [super mouseUp:theEvent];
}

@end
