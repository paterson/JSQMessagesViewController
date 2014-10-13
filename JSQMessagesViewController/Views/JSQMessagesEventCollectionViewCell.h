//
//  JSQMessagesEventCollectionViewCell.h
//  Pods
//
//  Created by Niall Paterson on 17/09/2014.
//
//

#import "JSQMessagesCollectionViewCell.h"

@interface JSQMessagesEventCollectionViewCell : JSQMessagesCollectionViewCell

@property (nonatomic,retain) IBOutlet UIView *coloredView;
@property (nonatomic,retain) IBOutlet UIImageView *eventIcon;

@property (nonatomic, retain) IBOutlet NSLayoutConstraint *eventIconHeightConstraint;
@property (nonatomic, retain) IBOutlet NSLayoutConstraint *eventIconWidthConstraint;

- (UIEdgeInsets)textViewFrameInsets;
- (void)setCornersOnColoredView;
@end
