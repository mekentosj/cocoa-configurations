//
//  JKCollectionView.m
//  ShapeFactory
//
//  Created by Joris Kluivers on 4/14/12.
//  Copyright (c) 2012 Tarento Software. All rights reserved.
//

#import "JKOutlineView.h"

@implementation JKOutlineView

- (void)drawGridInClipRect:(NSRect)clipRect
{
	// no drawing here, no gridlines for empty rows
}

- (void)drawBackgroundInClipRect:(NSRect)clipRect
{
	[[NSColor colorWithCalibratedWhite:0.85 alpha:1.000] set];
	NSRectFill(clipRect);
}

@end
