//
//  JSQMessagesEventCollectionViewCell.m
//  Pods
//
//  Created by Niall Paterson on 17/09/2014.
//
//

#import "JSQMessagesEventCollectionViewCell.h"

@implementation JSQMessagesEventCollectionViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.textView.textColor = [UIColor whiteColor];
    self.textView.userInteractionEnabled = false;
    self.textView.alpha = 0.0;
    //self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [self setCornersOnColoredView];
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewWasTapped)];
    [self.messageBubbleContainerView addGestureRecognizer:tapRecognizer];
    
}

- (void)viewWasTapped {
    NSDictionary* userInfo = @{@"cell": self};
    [[NSNotificationCenter defaultCenter] postNotificationName:@"JSQMessagesCollectionViewCellWasTapped" object:self userInfo:userInfo];
}

- (UIEdgeInsets)textViewFrameInsets
{
    return UIEdgeInsetsMake(self.textViewTopVerticalSpaceConstraint.constant,
                            self.textViewMarginHorizontalSpaceConstraint.constant,
                            self.textViewBottomVerticalSpaceConstraint.constant,
                            self.textViewAvatarHorizontalSpaceConstraint.constant);
}

- (void)setCornersOnColoredView {
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
