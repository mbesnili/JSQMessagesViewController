//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesLabel.h"

@implementation JSQMessagesLabel

#pragma mark - Initialization

- (void)jsq_configureLabel
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.textInsets = UIEdgeInsetsZero;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self jsq_configureLabel];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self jsq_configureLabel];
}

-(CGSize)intrinsicContentSize
{
    CGSize intrinsicSuperViewContentSize = [super intrinsicContentSize] ;
    intrinsicSuperViewContentSize.height += self.textInsets.top + self.textInsets.bottom ;
    intrinsicSuperViewContentSize.width += self.textInsets.left + self.textInsets.right ;
    return intrinsicSuperViewContentSize ;
}

#pragma mark - Setters

- (void)setTextInsets:(UIEdgeInsets)textInsets
{
    if (UIEdgeInsetsEqualToEdgeInsets(_textInsets, textInsets)) {
        return;
    }
    
    _textInsets = textInsets;
    [self setNeedsDisplay];
    [self invalidateIntrinsicContentSize];
}

#pragma mark - Drawing

- (void)drawTextInRect:(CGRect)rect
{    
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.textInsets)];
}

@end
