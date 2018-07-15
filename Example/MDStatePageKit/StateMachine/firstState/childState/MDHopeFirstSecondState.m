//
//  MDHopeFirstSecondState.m
//  MDProject
//
//  Created by lizitao on 2018/5/13.
//

#import "MDHopeFirstSecondState.h"
@interface MDHopeFirstSecondState ()
@property (nonatomic, strong) UIView *firstLabelBgView;
@property (nonatomic, strong) UILabel *firstLabel;
@end

@implementation MDHopeFirstSecondState

- (void)didEnterWithPreviousState:(__kindof MDBaseViewState *)preState
{
    [super didEnterWithPreviousState:preState];
    self.contentView.frame = CGRectMake(150, 60, 60, 30);
    self.contentView.hidden = NO;
    self.contentView.backgroundColor = [UIColor yellowColor];
    self.firstLabelBgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 60, 30)];
    self.firstLabel = [UILabel new];
    self.firstLabel.text = @"状态1-2";
    self.firstLabel.font = [UIFont systemFontOfSize:15.0];
    self.firstLabel.textAlignment = NSTextAlignmentCenter;
    self.firstLabel.backgroundColor = [UIColor greenColor];
    [self.firstLabel sizeToFit];
    self.firstLabel.frame = CGRectMake(0, 0, 60, 30);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked:)];
    [self.firstLabelBgView addGestureRecognizer:tap];
    [self.firstLabelBgView addSubview:self.firstLabel];
    [self.contentView addSubview:self.firstLabelBgView];
}


- (void)tapClicked:(UITapGestureRecognizer *)tap
{
    
}

//- (void)willExitWithNextState:(XYBaseViewState *)nextState
//{
//    self.view.hidden = YES;
//}


@end
