//
//  NSArray+PFAdditions.m
//  juyoulicai
//
//  Created by 应晓胜 on 16/7/20.
//  Copyright © 2016年 应晓胜. All rights reserved.
//

#import "NSArray+PFAdditions.h"

@implementation NSArray (PFAdditions)

- (BOOL)writeToPlistFile:(NSString*)filePath{
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [data writeToFile:filePath atomically:YES];
}

+ (NSArray*)readFromPlistFile:(NSString*)filePath{
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    return  [NSKeyedUnarchiver unarchiveObjectWithData:data];
}

@end
