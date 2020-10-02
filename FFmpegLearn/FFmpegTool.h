//
//  FFmpegTool.h
//  FFmpegLearn
//
//  Created by 赵优路 on 2020/10/2.
//  Copyright © 2020 thj. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface FFmpegTool : NSObject
+ (FFmpegTool *)sharedManager;

/**
 转换视频
 @param inputPath 输入视频路径
 @param outpath 输出视频路径
 @param processBlock 进度回调
 @param completionBlock 结束回调
 */
- (void)converWithInputPath:(NSString *)inputPath
                 outputPath:(NSString *)outpath
               processBlock:(void (^)(float process))processBlock
            completionBlock:(void (^)(NSError *error))completionBlock;

// 设置总时长
+ (void)setDuration:(long long)time;

// 设置当前时间
+ (void)setCurrentTime:(long long)time;

// 转换停止
+ (void)stopRuning;
@end

NS_ASSUME_NONNULL_END
