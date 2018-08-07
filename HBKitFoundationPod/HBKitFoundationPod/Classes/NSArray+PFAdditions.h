//
//  NSArray+PFAdditions.h
//  juyoulicai
//
//  Created by 应晓胜 on 16/7/20.
//  Copyright © 2016年 应晓胜. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (PFAdditions)

/*!
 * @abstract
 * 将Array写入Plist文件[归档]
 * @param filePath
 * 文件路径
 */
-(BOOL)writeToPlistFile:(NSString*)filePath;

/*!
 * @abstract
 * 根据Plist文件生成Array[反归档]
 * @param filePath
 * 文件路径
 */
+(NSArray*)readFromPlistFile:(NSString*)filePath;

@end
