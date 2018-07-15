//
//  MDBaseStateViewController.m
//  MDStatePageKit
//
//  Created by lizitao on 2018/5/13.
//

#import "MDBaseStateViewController.h"
#import "MDBaseViewState.h"
#import "MDBaseStateDelegate.h"
#import "MDBaseZeroViewState.h"

@interface MDBaseStateViewController ()
@property (nonatomic, strong) NSMutableArray *viewStates;
@end

@implementation MDBaseStateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadFatherState];
    [self loadBrotherStates];
    [self loadChildStates];
}

//VC是顶级状态，FatherState为zeroState;
- (void)loadFatherState
{
    MDBaseZeroViewState *zeroState = [MDBaseZeroViewState new];
    self.fatherState = zeroState;
}

//VC是顶级状态，brotherState为zeroState，可扩展;
- (void)loadBrotherStates
{
    MDBaseZeroViewState *zeroState = [MDBaseZeroViewState new];
    self.brotherStates = [GKStateMachine stateMachineWithStates:@[zeroState]];
}

- (void)loadChildStates
{
    NSMutableArray *viewStates = [NSMutableArray array];
    for (NSString *obj in [self childViewStates]) {
        Class class = NSClassFromString(obj);
        if (!class) continue;
        __kindof MDBaseViewState *state = [[class alloc]init];
        state.fatherView = self.view;
        [viewStates addObject:state];
    }
    self.childStates = [GKStateMachine stateMachineWithStates:viewStates];
    //对于每种状态，它的子状态之间，互为兄弟状态
    for (MDBaseViewState *state in viewStates) {
        state.brotherStates = self.childStates;
    }
}

//子类继承实现
- (NSArray *)childViewStates
{
    return @[];
}

@end
