//
//  ViewController.m
//  RegularExpression
//
//  Created by LiCheng on 16/6/12.
//  Copyright © 2016年 Li_Cheng. All rights reserved.
//

#import "ViewController.h"

#import "LCRegExpTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    /**
     *  ----------使用方法----------
     */
    
    // 邮箱
    BOOL email = [LCRegExpTool lc_checkingEmail:@"licheng244344094@163.com"];
    NSLog(@"邮箱:%@", email?@"YES":@"NO");
    
    // 手机号
    BOOL mobilePhone = [LCRegExpTool lc_checkingMobile:@"13917714464"];
    NSLog(@"手机号:%@", mobilePhone?@"YES":@"NO");
    
    // 电话号 021-68686868  0511-6868686
    BOOL phone = [LCRegExpTool lc_checkingPhoneNum:@"0511-6868686"];
    NSLog(@"电话号:%@", phone?@"YES":@"NO");

    // 密码
    BOOL pwd = [LCRegExpTool lc_checkingPasswordWithShortest:6 longest:16 password:@"12321222djlksd43"];
    NSLog(@"密码:%@", pwd?@"YES":@"NO");

    // 数字
    BOOL number = [LCRegExpTool lc_checkingNumber:@"12232d"];
    NSLog(@"数字:%@", number?@"YES":@"NO");
    
    // n位数字
    BOOL numberLength = [LCRegExpTool lc_checkingNumberWithLength:@"5" number:@"1232323"];
    NSLog(@"n位数字:%@", numberLength?@"YES":@"NO");

    // 最少 n 位的数字
    BOOL leastLength = [LCRegExpTool lc_checkingNumberWithLeastLength:@"8" number:@"123344"];
    NSLog(@"最少n位数字:%@", leastLength?@"YES":@"NO");
    
    // 数字和字母
    BOOL numberAndCase = [LCRegExpTool lc_checkingStrFormNumberAndLetter:@"12asdas"];
    NSLog(@"数字和字母:%@", numberAndCase?@"YES":@"NO");
    
    // 小写字母
    BOOL lowerCase = [LCRegExpTool lc_checkingLowerLetter:@"dsasdadasd"];
    NSLog(@"小写字母:%@", lowerCase?@"YES":@"NO");

    // 大写字母
    BOOL upperCase = [LCRegExpTool lc_checkingUpperLetter:@"dsasdadasd"];
    NSLog(@"大写字母:%@", upperCase?@"YES":@"NO");
    
    // 字母
    BOOL baseCase = [LCRegExpTool lc_checkingStrFormLowerAndUpperLetter:@"ADASasas"];
    NSLog(@"小写字母:%@", baseCase?@"YES":@"NO");
    
    // 等等........

}


@end
