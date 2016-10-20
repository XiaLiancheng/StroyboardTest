//
//  ViewController.m
//  StroyboardTest
//
//  Created by apple on 16/10/19.
//  Copyright © 2016年 Liancheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *modalView;
@property (weak, nonatomic) IBOutlet UIView *shadeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.shadeView.hidden = YES;
    
        self.modalView.frame = CGRectMake(0, 667+45, 375, 277);
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)clickNeedDisplayView:(id)sender {


    self.shadeView.hidden = NO;
    

    [UIView animateWithDuration:0.5 // 动画时长
                          delay:0.0 // 动画延迟
         usingSpringWithDamping:1.0 // 类似弹簧振动效果 0~1
          initialSpringVelocity:1.0 // 初始速度
                        options:UIViewAnimationOptionCurveEaseInOut // 动画过渡效果
                     animations:^{
                       self.modalView.frame = CGRectMake(0, 340, 375, 277);
                     } completion:^(BOOL finished) {
                     
                     }];

}

- (IBAction)needHiddenModelViewBtn:(id)sender {
    

    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(hiddenShadeView)];
    self.modalView.frame = CGRectMake(0, 667+45, 375, 277);
    [UIView commitAnimations];
}
- (IBAction)clickNeedDisplayView1:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(hiddenShadeView)];
    self.modalView.frame = CGRectMake(0, 667+45, 375, 277);
    [UIView commitAnimations];
}
- (IBAction)need:(id)sender {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(hiddenShadeView)];
    self.modalView.frame = CGRectMake(0, 667+45, 375, 277);
    [UIView commitAnimations];
}

- (void)hiddenShadeView{
        self.shadeView.hidden = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
