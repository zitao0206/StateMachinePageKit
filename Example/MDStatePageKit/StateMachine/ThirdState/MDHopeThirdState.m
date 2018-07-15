//
//  MDHopeThirdState.m
//  MDProject
//
//  Created by lizitao on 2018/4/15.
//

#import "MDHopeThirdState.h"
@interface MDHopeThirdState ()
@property (nonatomic, strong) UIView *thirdLabelBgView;
@property (nonatomic, strong) UILabel *thirdLabel;
@end
@implementation MDHopeThirdState

- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.contentView.frame = CGRectMake(0, 250, [UIScreen mainScreen].bounds.size.width, 150);
    self.contentView.backgroundColor = [UIColor blueColor];
    self.thirdLabelBgView = [[UIView alloc]initWithFrame:CGRectMake((self.contentView.frame.size.width - 60)/2, 150 - 30, 60, 30)];
    self.thirdLabel = [UILabel new];
    self.thirdLabel.text = @"状态3";
    self.thirdLabel.font = [UIFont systemFontOfSize:15.0];
    self.thirdLabel.textAlignment = NSTextAlignmentCenter;
    self.thirdLabel.backgroundColor = [UIColor greenColor];
    [self.thirdLabel sizeToFit];
    self.thirdLabel.frame = CGRectMake(0, 0, 60, 30);
    [self.thirdLabelBgView addSubview:self.thirdLabel];
    [self.contentView addSubview:self.thirdLabelBgView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked:)];
    [self.thirdLabelBgView addGestureRecognizer:tap];
    [self.thirdLabelBgView addSubview:self.thirdLabel];
}

- (void)willExitWithNextState:(GKState *)nextState
{
    [self.contentView removeFromSuperview];
    self.contentView = nil;
}

- (void)tapClicked:(UITapGestureRecognizer *)tap
{
    [self.brotherStates enterState:NSClassFromString(@"MDHopeZeroState")];
}

@end
