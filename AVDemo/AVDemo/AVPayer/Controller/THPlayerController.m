//
//  THPlayerController.m
//  AVDemo
//
//  Created by 顶上优秀 on 2021/3/5.
//

#import "THPlayerController.h"
#import <AVFoundation/AVFoundation.h>
#import "THPlayerView.h"

//AVPlayerItem的播放状态
#define STATUS_KETPATH @"status"
//定时观察播放器刷新 的定时间隔
#define REFRESH_INTERVAL 0.5f
//观察常量key
static const NSString * PlayerItemStatusContext;

@interface THPlayerController ()

@property(nonatomic, strong)AVAsset * asset;
@property(nonatomic, strong)AVPlayerItem * playerItem;
@property(nonatomic, strong)AVPlayer * player;
@property(nonatomic, strong)THPlayerView * playerView;
//

@property(nonatomic, strong)id timeObserver;
@property(nonatomic, strong)id itemEndObsetver;
@property(nonatomic, assign)float lastPlaybackRate;



@end

@implementation THPlayerController

@end
