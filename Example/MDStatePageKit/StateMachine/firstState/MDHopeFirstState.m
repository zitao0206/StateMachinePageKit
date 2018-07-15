//
//  MDHopeFirstState.m
//  MDProject
//
//  Created by lizitao on 2018/4/15.
//

#import "MDHopeFirstState.h"
#import "MDHopeThirdState.h"
@interface MDHopeFirstState ()
@property (nonatomic, strong) UIView *firstLabelBgView;
@property (nonatomic, strong) UILabel *firstLabel;
@end

@implementation MDHopeFirstState

- (void)dealloc
{
    
}

- (void)didEnterWithPreviousState:(__kindof MDBaseViewState *)preState
{
    [super didEnterWithPreviousState:preState];
    self.contentView.frame = CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, 150);
    self.contentView.backgroundColor = [UIColor greenColor];
    self.firstLabelBgView = [[UIView alloc]initWithFrame:CGRectMake((self.contentView.frame.size.width - 60)/2, 150 - 30, 60, 30)];
    self.firstLabel = [UILabel new];
    self.firstLabel.text = @"状态1";
    self.firstLabel.font = [UIFont systemFontOfSize:15.0];
    self.firstLabel.textAlignment = NSTextAlignmentCenter;
    self.firstLabel.backgroundColor = [UIColor redColor];
    [self.firstLabel sizeToFit];
    self.firstLabel.frame = CGRectMake(0, 0, 60, 30);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClicked:)];
    [self.firstLabelBgView addGestureRecognizer:tap];
    [self.firstLabelBgView addSubview:self.firstLabel];
    [self.contentView addSubview:self.firstLabelBgView];
}

- (void)tapClicked:(UITapGestureRecognizer *)tap
{
    if (![self.childStates.currentState isKindOfClass:NSClassFromString(@"MDHopeFirstFirstState")]) {
        [self.childStates enterState:NSClassFromString(@"MDHopeFirstFirstState")];
    } else {
        [self.childStates enterState:NSClassFromString(@"MDHopeFirstSecondState")];
    }
}

- (NSArray *)childViewStates
{
    return @[
             @"MDHopeFirstFirstState",
             @"MDHopeFirstSecondState",
            ];
}


@end
