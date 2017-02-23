//
//  Dog.m
//  Runtime-DicForModel
//
//  Created by caifeng on 2017/2/22.
//  Copyright © 2017年 facaishu. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (NSString *)description {

    NSArray *keys = @[@"name", @"age", @"height", @"title"];
    return [self dictionaryWithValuesForKeys:keys].description;
}

@end
