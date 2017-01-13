//
//  LCRegExpTool.h
//  RegularExpression
//
//  Created by LiCheng on 2017/1/13.
//  Copyright © 2017年 Li_Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LCRegExpTool : NSObject


/**
 *  邮箱验证
 */
+ (BOOL)lc_checkingEmail:(NSString *)email;

/**
 *  手机号验证
 */
+(BOOL)lc_checkingMobile:(NSString *)mobile;

/**
 *  电话号验证
 */
+(BOOL)lc_checkingPhoneNum:(NSString *)phoneNum;

/**
 *  身份证号验证(15位 或 18位)
 */
+(BOOL)lc_checkingIdCard:(NSString *)idCard;

/**
 *  密码验证
 *
 *  @param shortest 最短长度
 *  @param longest  最长长度
 *  @param pwd      密码
 *
 *  @return 结果
 */
+(BOOL)lc_checkingPasswordWithShortest:(NSInteger)shortest
                               longest:(NSInteger)longest
                              password:(NSString *)pwd;


/**
 *  由数字和26个英文字母组成的字符串
 *
 */
+ (BOOL)lc_checkingStrFormNumberAndLetter:(NSString *)data;

/**
 *  校验只能输入由26个小写英文字母组成的字符串
 */
+ (BOOL)lc_checkingStrFormLowerAndUpperLetter:(NSString *)data;


/**
 *  校验只能输入小写字母
 */
+ (BOOL)lc_checkingLowerLetter:(NSString *)lowerCase;

/**
 *  校验只能输入大写字母
 */
+ (BOOL)lc_checkingUpperLetter:(NSString *)upperCase;


/**
 *  是否含有特殊字符(%&’,;=?$\等)
 */
+ (BOOL)lc_checkingSpecialChar:(NSString *)data;


/**
 *  校验只能输入数字
 */
+ (BOOL)lc_checkingNumber:(NSString *)number;

/**
 *  校验只能输入n位的数字
 *
 *  @param length n位
 *  @param number 数字
 */
+ (BOOL)lc_checkingNumberWithLength:(NSString *)length number:(NSString *)number;

/**
 *  校验最少输入n位的数字
 *
 *  @param length n位
 *  @param number 数字
 */
+ (BOOL)lc_checkingNumberWithLeastLength:(NSString *)leastLength number:(NSString *)number;


@end
