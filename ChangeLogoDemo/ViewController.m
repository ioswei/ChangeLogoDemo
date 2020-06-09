//
//  ViewController.m
//  ChangeLogoDemo
//
//  Created by iMac-1 on 2020/6/9.
//  Copyright © 2020 iOS_阿玮. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)changLogoClick:(UIButton *)sender {
    
    
    NSLog(@"1111===%ld",(long)sender.tag);
    
    switch (sender.tag) {
        case 0:
            [self changeImageNames:@"icon1"];
            break;
        case 1:
            [self changeImageNames:@"icon2"];
            break;
        case 2:
            [self changeImageNames:@"icon3"];
        break;
            
        default:
            [self changeImageNames:@"icon4"];
            break;
    }
    
    
    
    
}


- (void)changeImageNames:(NSString *)name{

    if (@available(iOS 10.3, *)) {
        if ([UIApplication sharedApplication].supportsAlternateIcons) {//来判断是否支持换应用图标
            
            //setAlertnateIconName方法有二个参数
            
            //第一个参数是要换图标的名字(此名字不是图片的原始名字)，如果写nil，系统默认是最初图标名字
            
            //第二个参数是方法执行的回调
            
            [[UIApplication sharedApplication] setAlternateIconName:name completionHandler:^(NSError *_Nullable error) {
                
                if (error) {
                    
                    NSLog(@"失败");
                    
                    }else{
                        
                     NSLog(@"成功");
                        
                   }
                
                }];
            
            }
        
    } else {
        // Fallback on earlier versions
    }


}





@end
