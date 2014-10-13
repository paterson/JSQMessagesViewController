//
//  JSQMessagesEventCollectionViewCellOutgoing.m
//  Pods
//
//  Created by Niall Paterson on 17/09/2014.
//
//

#import "JSQMessagesEventCollectionViewCellOutgoing.h"

@implementation JSQMessagesEventCollectionViewCellOutgoing

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesEventCollectionViewCellOutgoing class]) bundle:[NSBundle mainBundle]];
}

+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([JSQMessagesEventCollectionViewCellOutgoing class]);
}

- (void)setTextViewFrameInsets:(UIEdgeInsets)textViewFrameInsets
{
    if (UIEdgeInsetsEqualToEdgeInsets(textViewFrameInsets, self.textViewFrameInsets)) {
        return;
    }
    
    [self jsq_updateConstraint:self.textViewTopVerticalSpaceConstraint withConstant:textViewFrameInsets.top];
    [self jsq_updateConstraint:self.textViewBottomVerticalSpaceConstraint withConstant:textViewFrameInsets.bottom];
    [self jsq_updateConstraint:self.textViewAvatarHorizontalSpaceConstraint withConstant:textViewFrameInsets.right];
    [self jsq_updateConstraint:self.textViewMarginHorizontalSpaceConstraint withConstant:textViewFrameInsets.left + 45];
}

- (void)setCornersOnColoredView {
    
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.coloredView.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerTopLeft)
                                           cornerRadii:CGSizeMake(4.0, 4.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.coloredView.layer.mask = maskLayer;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
