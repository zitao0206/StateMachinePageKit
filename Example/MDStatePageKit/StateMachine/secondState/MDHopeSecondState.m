//
//  MDHopeSecondState.m
//  MDProject
//
//  Created by lizitao on 2018/4/15.
//

#import "MDHopeSecondState.h"
#import "MDHopeThirdState.h"

@interface MDHopeSecondState ()
@property (nonatomic, strong) UIView *secondLabelBgView;
@property (nonatomic, strong) UILabel *secondLabel;
@end

@implementation MDHopeSecondState

- (void)didEnterWithPreviousState:(nullable GKState *)preState
{
    [super didEnterWithPreviousState:preState];
    self.contentView.frame = CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width, 150);
    self.contentView.backgroundColor = [UIColor redColor];
    
    self.secondLabelBgView = [[UIView alloc]initWithFrame:CGRectMake((self.contentView.frame.size.width - 60)/2, 150 - 30, 60, 30)];
    self.secondLabel = [UILabel new];
    self.secondLabel.text = @"状态2";
    self.secondLabel.font = [UIFont systemFontOfSize:15.0];
    self.secondLabel.textAlignment = NSTextAlignmentCenter;
    self.secondLabel.backgroundColor = [UIColor lightGrayColor];
    [self.secondLabel sizeToFit];
    self.secondLabel.frame = CGRectMake(0, 0, 60, 30);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked:)];
    [self.secondLabelBgView addGestureRecognizer:tap];
    [self.secondLabelBgView addSubview:self.secondLabel];
    [self.contentView addSubview:self.secondLabelBgView];
}

- (void)willExitWithNextState:(GKState *)nextState
{
    [self.contentView removeFromSuperview];
    self.contentView = nil;
}

- (void)tapClicked:(UITapGestureRecognizer *)tap
{
    [self.brotherStates enterState:NSClassFromString(@"MDHopeThirdState")];
}



@end
