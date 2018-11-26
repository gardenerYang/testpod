//
//  ViewController1.m
//  YSLoctionTool
//
//  Created by yangshuai on 2018/11/26.
//  Copyright © 2018年 daniel. All rights reserved.
//

#import "ViewController1.h"
#import "YSLocationManager.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [[YSLocationManager sharedManager] getLocationDidFinishBlock:^(YSLocationManagerModel *model) {
        NSLog(@"%f----%@",model.latitude,model.name);
    } errorBolck:^(NSError *error) {
        
    }];
    
}

@end
