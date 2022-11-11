//
//  BaseStateViewController.h
//  MDStatePageKit
//
//  Created by Leon0206 on 2018/5/13.
//

@import GameKit;

@interface BaseStateViewController : UIViewController
@property (nonatomic, strong) GKState *fatherState;
@property (nonatomic, strong) GKStateMachine *brotherStates;
@property (nonatomic, strong) GKStateMachine *childStates;
@end
