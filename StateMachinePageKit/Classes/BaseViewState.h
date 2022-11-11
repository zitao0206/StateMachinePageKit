//
//  BaseViewState.h
//  MDStatePageKit
//
//  Created by Leon0206 on 2018/5/13.
//

#import <GameplayKit/GameplayKit.h>

@interface BaseViewState : GKState
@property (nonatomic, strong) UIView *fatherView;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, strong) GKState *fatherState;
@property (nonatomic, strong) GKStateMachine *childStates;
@property (nonatomic, strong) GKStateMachine *brotherStates;
@end
