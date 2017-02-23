//
//  NSObject+DicForModel.m
//  Runtime-DicForModel
//
//  Created by caifeng on 2017/2/22.
//  Copyright © 2017年 facaishu. All rights reserved.
//

#import "NSObject+DicForModel.h"

@implementation NSObject (DicForModel)

+ (instancetype)mw_modelWithDic:(NSDictionary *)dic {

    id objModel = [[self alloc] init];
    NSArray *proList = [self mw_propertyList];
    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        if ([proList containsObject:key]) {
            [objModel setValue:obj forKey:key];
        }
    }];
    return objModel;
}


+ (NSArray *)mw_propertyList {

    unsigned int count = 0;
    objc_property_t *proList = class_copyPropertyList([self class], &count);
    
    NSMutableArray *arrM = [NSMutableArray array];
    for (NSInteger i = 0; i < count; i++) {
        objc_property_t pro = proList[i];
        const char *cName = property_getName(pro);
        NSString *ocName = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        [arrM addObject:ocName];
    }
    
    free(proList);
    return arrM.copy;
}

@end
