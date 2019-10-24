//
//  ViewController.m
//  viewtest
//
//  Created by 高原敬 on 2019/10/24.
//  Copyright © 2019 高原敬. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton* btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    [self setFlatButtonStyle:btn haveMenu:NO];
    
    [self.view addSubview:btn];
}


-(void)setFlatButtonStyle:(UIButton*)button haveMenu:(BOOL)haveMenu {
    UIImage* baseimage = [self makeBtnImage:button.frame.size
                                     baseImage:[[UIImage imageNamed:@"mode_btn_frame"] resizableImageWithCapInsets:UIEdgeInsetsMake(5, 5, 5, 5)]];

    [button setBackgroundImage:baseimage forState:UIControlStateNormal];
   
}

- (UIImage*)makeBtnImage:(CGSize)size baseImage:(UIImage*)baseImage{
    CGFloat width = size.width;
    CGFloat height = size.height;
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(width, height), NO, [UIScreen mainScreen].scale);
    if(baseImage!=nil){
        [baseImage drawInRect:CGRectMake(0, 0, width, height)];
    }
    UIImage *backgroundImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return backgroundImage;
}


@end
