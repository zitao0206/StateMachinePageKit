//
//  MDBaseViewState.h
//  MDStatePageKit
//
//  Created by lizitao on 2018/5/13.
//

#import <GameplayKit/GameplayKit.h>

@interface MDBaseViewState : GKState
@property (nonatomic, strong) UIView *fatherView;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) GKState *fatherState;
@property (nonatomic, strong) GKStateMachine *childStates;
@property (nonatomic, strong) GKStateMachine *brotherStates;
@end
