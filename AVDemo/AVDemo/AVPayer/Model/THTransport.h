//
//  THTransport.h
//  AVDemo
//
//  Created by 顶上优秀 on 2021/3/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol THTransportDelegate <NSObject>

- (void)play;
- (void)pause;
- (void)stop;

- (void)scrubbingDidStart;
- (void)scrubbedToTime:(NSTimeInterval)time;
- (void)scrubbingDidEnd;

- (void)jumpedToTime:(NSTimeInterval)time;

@end

@protocol THTransport <NSObject>

@property(nonatomic, weak)id <THTransportDelegate>delegate;

- (void)setTitle:(NSString *)title;

@end

NS_ASSUME_NONNULL_END
