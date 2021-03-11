//
//  THPlayerView.m
//  AVDemo
//
//  Created by 顶上优秀 on 2021/3/5.
//

#import "THPlayerView.h"
#import <AVFoundation/AVFoundation.h>
#import "THOverlayView.h"

@interface THPlayerView ()

@property(nonatomic, strong)THOverlayView * overlayView;

@end

@implementation THPlayerView

//MARK:重写layerClass的返回方法，使layer为AVPlayerLayer
+ (Class)layerClass{
    return [AVPlayerLayer class];
}

- (id)initWithPlayer:(AVPlayer *)player{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        [(AVPlayerLayer *)[self layer] setPlayer:player];
        [[NSBundle mainBundle] loadNibNamed:@"THOverlayView" owner:self options:nil];
        [self addSubview:_overlayView];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.overlayView.frame = self.bounds;
}


@end
