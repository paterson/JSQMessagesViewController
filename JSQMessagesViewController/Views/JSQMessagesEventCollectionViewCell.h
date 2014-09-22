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

- (UIEdgeInsets)textViewFrameInsets;
- (void)setCornersOnColoredView;
@end
