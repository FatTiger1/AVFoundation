//
//  THPlayerController.h
//  AVDemo
//
//  Created by 顶上优秀 on 2021/3/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface THPlayerController : NSObject

- (id)initWithURL:(NSURL *)assetURL;

@property(nonatomic, strong,readonly)UIView * view;

@end

NS_ASSUME_NONNULL_END
