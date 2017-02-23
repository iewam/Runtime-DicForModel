//
//  ViewController.m
//  Runtime-DicForModel
//
//  Created by caifeng on 2017/2/22.
//  Copyright © 2017年 facaishu. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "NSObject+DicForModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    Dog *dog = [Dog mw_modelWithDic:@{@"name":@"ahuang",
                                        @"age" : @1,
                                        @"height" : @30,
                                        @"title" : @"jinmao",
                                        @"id" : @"none"}];
    NSLog(@"%@", dog);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
