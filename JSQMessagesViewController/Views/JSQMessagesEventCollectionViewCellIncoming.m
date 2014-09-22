//
//  JSQMessagesEventCollectionViewCellIncoming.m
//  Pods
//
//  Created by Niall Paterson on 17/09/2014.
//
//

#import "JSQMessagesEventCollectionViewCellIncoming.h"

@implementation JSQMessagesEventCollectionViewCellIncoming

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([JSQMessagesEventCollectionViewCellIncoming class]) bundle:[NSBundle mainBundle]];
}

+ (NSString *)cellReuseIdentifier
{
    return NSStringFromClass([JSQMessagesEventCollectionViewCellIncoming class]);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
