//
//  CodeView.h
//  eWallet
//
//  Created by shiyong on 17/9/16.
//  Copyright © 2017年 SY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CodeView : UIView
@property (nonatomic, retain) NSArray *changeArray; //字符素材数组
@property (nonatomic, retain) NSMutableString *changeString;  //验证码的字符串
//跟换验证码
-(void)changeCaptcha;
@end
