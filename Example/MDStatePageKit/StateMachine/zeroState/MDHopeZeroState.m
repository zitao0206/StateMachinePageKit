//
//  MDHopeZeroState.m
//  MDProject
//
//  Created by lizitao on 2018/7/15.
//  Copyright © 2018年 lizitao. All rights reserved.
//

#import "MDHopeZeroState.h"
@class MDBaseViewState;
@interface MDHopeZeroState ()
@property (nonatomic, strong) UIView *firstLabelBgView;
@property (nonatomic, strong) UILabel *firstLabel;

@property (nonatomic, strong) UIView *secondLabelBgView;
@property (nonatomic, strong) UILabel *secondLabel;

@property (nonatomic, strong) UIView *thirdLabelBgView;
@property (nonatomic, strong) UILabel *thirdLabel;
@end

@implementation MDHopeZeroState

- (void)didEnterWithPreviousState:(nullable GKState *)previousState
{
    [super didEnterWithPreviousState:previousState];
    self.contentView.frame = CGRectMake(0, 0, self.fatherView.bounds.size.width, self.fatherView.bounds.size.height);
    self.contentView.backgroundColor = [UIColor whiteColor];
    {
        self.firstLabelBgView = [[UIView alloc]initWithFrame:CGRectMake(20, 100, 80, 30)];
        self.firstLabelBgView.backgroundColor =  [UIColor greenColor];
        self.firstLabel = [UILabel new];
        self.firstLabel.text = @"进入状态1";
        self.firstLabel.font = [UIFont systemFontOfSize:13.0];
        self.firstLabel.textAlignment = NSTextAlignmentCenter;
        self.firstLabel.backgroundColor = [UIColor clearColor];
        [self.firstLabel sizeToFit];
        self.firstLabel.frame = CGRectMake(0, 0, 80, 30);
        UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked1:)];
        [self.firstLabelBgView addGestureRecognizer:tap1];
        [self.firstLabelBgView addSubview:self.firstLabel];
        [self.contentView addSubview:self.firstLabelBgView];
    }
    {
        self.secondLabelBgView = [[UIView alloc]initWithFrame:CGRectMake(120, 100, 80, 30)];
        self.secondLabelBgView.backgroundColor =  [UIColor redColor];
        self.secondLabel = [UILabel new];
        self.secondLabel.text = @"进入状态2";
        self.secondLabel.font = [UIFont systemFontOfSize:13.0];
        self.secondLabel.textAlignment = NSTextAlignmentCenter;
        self.secondLabel.backgroundColor = [UIColor clearColor];
        [self.secondLabel sizeToFit];
        self.secondLabel.frame = CGRectMake(0, 0, 80, 30);
        UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked2:)];
        [self.secondLabelBgView addGestureRecognizer:tap2];
        [self.secondLabelBgView addSubview:self.secondLabel];
        [self.contentView addSubview:self.secondLabelBgView];
        
    }
    {
        self.thirdLabelBgView = [[UIView alloc]initWithFrame:CGRectMake(220, 100, 80, 30)];
        self.thirdLabelBgView.backgroundColor =  [UIColor blueColor];
        self.thirdLabel = [UILabel new];
        self.thirdLabel.text = @"进入状态3";
        self.thirdLabel.font = [UIFont systemFontOfSize:13.0];
        self.thirdLabel.textAlignment = NSTextAlignmentCenter;
        self.thirdLabel.backgroundColor = [UIColor clearColor];
        [self.thirdLabel sizeToFit];
        self.thirdLabel.frame = CGRectMake(0, 0, 80, 30);
        UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked3:)];
        [self.thirdLabelBgView addGestureRecognizer:tap3];
        [self.thirdLabelBgView addSubview:self.thirdLabel];
        [self.contentView addSubview:self.thirdLabelBgView];
    }
}

- (void)willExitWithNextState:(GKState *)nextState
{

}

- (void)tapClicked1:(UITapGestureRecognizer *)tap
{
    [self.brotherStates enterState:NSClassFromString(@"MDHopeFirstState")];
}

- (void)tapClicked2:(UITapGestureRecognizer *)tap
{
    [self.brotherStates enterState:NSClassFromString(@"MDHopeSecondState")];
}

- (void)tapClicked3:(UITapGestureRecognizer *)tap
{
    [self.brotherStates enterState:NSClassFromString(@"MDHopeThirdState")];
}

@end
