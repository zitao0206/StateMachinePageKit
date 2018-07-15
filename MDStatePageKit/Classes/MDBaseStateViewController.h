//
//  MDBaseStateViewController.h
//  MDStatePageKit
//
//  Created by lizitao on 2018/5/13.
//

@import GameKit;

@interface MDBaseStateViewController : UIViewController
@property (nonatomic, strong) GKState *fatherState;
@property (nonatomic, strong) GKStateMachine *brotherStates;
@property (nonatomic, strong) GKStateMachine *childStates;
@end
