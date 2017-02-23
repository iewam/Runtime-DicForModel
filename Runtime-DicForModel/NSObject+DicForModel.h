//
//  NSObject+DicForModel.h
//  Runtime-DicForModel
//
//  Created by caifeng on 2017/2/22.
//  Copyright © 2017年 facaishu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (DicForModel)


/**
 字典转模型

 @param dic 字典数据
 @return 模型对象
 */
+ (instancetype)mw_modelWithDic:(NSDictionary *)dic;

/**
 获取属性列表

 @return 属性列表数组
 */
+ (NSArray *)mw_propertyList;

@end
