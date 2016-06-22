//
//  ViewController.m
//  RegularExpression
//
//  Created by LiCheng on 16/6/12.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "ViewController.h"
#import "CheckDataTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    /**
     *  ----------使用方法----------
     */
    
    // 邮箱
    BOOL email = [CheckDataTool checkForEmail:@"licheng244344094@163.com"];
    NSLog(@"邮箱:%@", email?@"YES":@"NO");
    
    // 手机号
    BOOL mobilePhone = [CheckDataTool checkForMobilePhoneNo:@"13917714464"];
    NSLog(@"手机号:%@", mobilePhone?@"YES":@"NO");
    
    // 电话号 021-68686868  0511-6868686
    BOOL phone = [CheckDataTool checkForPhoneNo:@"0511-6868686"];
    NSLog(@"电话号号:%@", phone?@"YES":@"NO");

    // 密码
    BOOL pwd = [CheckDataTool checkForPasswordWithShortest:6 longest:16 password:@"12321222121343"];
    NSLog(@"密码号:%@", pwd?@"YES":@"NO");

    // 数字
    BOOL number = [CheckDataTool checkForNumber:@"12232d"];
    NSLog(@"数字:%@", number?@"YES":@"NO");
    
    // n位数字
    BOOL numberLength = [CheckDataTool checkForNumberWithLength:@"5" number:@"1223"];
    NSLog(@"n位数字:%@", numberLength?@"YES":@"NO");
    
    // 数字和字母
    BOOL numberAndCase = [CheckDataTool checkForNumberAndCase:@"12asdas"];
    NSLog(@"数字和字母:%@", numberAndCase?@"YES":@"NO");
    
    // 小写字母
    BOOL lowerCase = [CheckDataTool checkForLowerCase:@"dsasdadasd"];
    NSLog(@"小写字母:%@", lowerCase?@"YES":@"NO");

    // 大写字母
    BOOL upperCase = [CheckDataTool checkForUpperCase:@"dsasdadasd"];
    NSLog(@"大写字母:%@", upperCase?@"YES":@"NO");
    
    // 字母
    BOOL baseCase = [CheckDataTool checkForLowerAndUpperCase:@"ADASasas"];
    NSLog(@"小写字母:%@", baseCase?@"YES":@"NO");
    
    // 等等........

}


@end
