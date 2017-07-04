//
//  ViewController.m
//  CAEmitterLayerDemo
//
//  Created by zpf on 2017/6/29.
//  Copyright © 2017年 XiHeLaoBo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    CAEmitterLayer *emitter;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    emitter = [CAEmitterLayer layer];
    emitter.frame = self.view.bounds;
    [self.view.layer addSublayer:emitter];
    
    
    emitter.renderMode = kCAEmitterLayerAdditive;
    //CGPointMake(emitter.frame.size.width / 2.0, emitter.frame.size.height / 2.0);
    emitter.emitterPosition = CGPointMake(0, 0);
    
    
    CAEmitterCell *cellRed = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellRed.contents = (__bridge id)[UIImage imageNamed:@"红"].CGImage;
    //每秒钟生成粒子个数
    cellRed.birthRate = 50;
    //粒子存活时间
    cellRed.lifetime = 8.0;
    //设置粒子背景色
    cellRed.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellRed.alphaSpeed = -0.5;
    //粒子运动的速度均值
    cellRed.velocity = 50;
    //粒子运动的速度扰动范围
    cellRed.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellRed.emissionRange = M_PI_4;
    cellRed.emissionLongitude = M_PI_4;
    cellRed.emissionLatitude = M_PI_4;
    cellRed.spin = 10;
    
    CAEmitterCell *cellOrange = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellOrange.contents = (__bridge id)[UIImage imageNamed:@"橙"].CGImage;
    //每秒钟生成粒子个数
    cellOrange.birthRate = 50;
    //粒子存活时间
    cellOrange.lifetime = 8.0;
    //设置粒子背景色
    cellOrange.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellOrange.alphaSpeed = -0.2;
    //粒子运动的速度均值
    cellOrange.velocity = 50;
    //粒子运动的速度扰动范围
    cellOrange.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellOrange.emissionRange = M_PI_4;
    cellOrange.emissionLongitude = M_PI_4;
    cellOrange.emissionLatitude = M_PI_4;
    cellOrange.spin = 10;
    
    CAEmitterCell *cellYellow = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellYellow.contents = (__bridge id)[UIImage imageNamed:@"黄"].CGImage;
    //每秒钟生成粒子个数
    cellYellow.birthRate = 50;
    //粒子存活时间
    cellYellow.lifetime = 8.0;
    //设置粒子背景色
    cellYellow.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellYellow.alphaSpeed = -0.5;
    //粒子运动的速度均值
    cellYellow.velocity = 50;
    //粒子运动的速度扰动范围
    cellYellow.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellYellow.emissionRange = M_PI_4;
    cellYellow.emissionLongitude = M_PI_4;
    cellYellow.emissionLatitude = M_PI_4;
    cellYellow.spin = 10;
    
    CAEmitterCell *cellGreen = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellGreen.contents = (__bridge id)[UIImage imageNamed:@"绿"].CGImage;
    //每秒钟生成粒子个数
    cellGreen.birthRate = 50;
    //粒子存活时间
    cellGreen.lifetime = 8.0;
    //设置粒子背景色
    cellGreen.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellGreen.alphaSpeed = -0.5;
    //粒子运动的速度均值
    cellGreen.velocity = 50;
    //粒子运动的速度扰动范围
    cellGreen.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellGreen.emissionRange = M_PI_4;
    cellGreen.emissionLongitude = M_PI_4;
    cellGreen.emissionLatitude = M_PI_4;
    cellGreen.spin = 10;
    
    CAEmitterCell *cellBlueness = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellBlueness.contents = (__bridge id)[UIImage imageNamed:@"青"].CGImage;
    //每秒钟生成粒子个数
    cellBlueness.birthRate = 50;
    //粒子存活时间
    cellBlueness.lifetime = 8.0;
    //设置粒子背景色
    cellBlueness.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellBlueness.alphaSpeed = -0.5;
    //粒子运动的速度均值
    cellBlueness.velocity = 50;
    //粒子运动的速度扰动范围
    cellBlueness.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellBlueness.emissionRange = M_PI_4;
    //下面的两个属性是确定发射方向
    cellBlueness.emissionLongitude = M_PI_4;
    cellBlueness.emissionLatitude = M_PI_4;
    cellBlueness.spin = 10;
    
    CAEmitterCell *cellBlue = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellBlue.contents = (__bridge id)[UIImage imageNamed:@"蓝"].CGImage;
    //每秒钟生成粒子个数
    cellBlue.birthRate = 50;
    //粒子存活时间
    cellBlue.lifetime = 8.0;
    //设置粒子背景色
    cellBlue.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellBlue.alphaSpeed = -0.3;
    //粒子运动的速度均值
    cellBlue.velocity = 50;
    //粒子运动的速度扰动范围
    cellBlue.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellBlue.emissionRange = M_PI_4;
    cellBlue.emissionLongitude = M_PI_4;
    cellBlue.emissionLatitude = M_PI_4;
    cellBlue.spin = 10;
    
    CAEmitterCell *cellViolet = [[CAEmitterCell alloc] init];
    //设置粒子内容
    cellViolet.contents = (__bridge id)[UIImage imageNamed:@"紫"].CGImage;
    //每秒生成粒子个数
    cellViolet.birthRate = 50;
    //粒子存活时间
    cellViolet.lifetime = 8.0;
    //设置粒子背景色
    cellViolet.color = [UIColor whiteColor].CGColor;
    //设置粒子消逝的速度
    cellViolet.alphaSpeed = -0.6;
    //粒子运动的速度均值
    cellViolet.velocity = 50;
    //粒子运动的速度扰动范围
    cellViolet.velocityRange = emitter.frame.size.width;
    //粒子发射角度范围
    cellViolet.emissionRange = M_PI_4;
    cellViolet.emissionLongitude = M_PI_4;
    cellViolet.emissionLatitude = M_PI_4;
    cellViolet.spin = 10;
    
    emitter.emitterCells = @[cellRed, cellOrange, cellYellow, cellGreen, cellBlueness, cellBlue, cellViolet];
}

#pragma mark - 警告
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
