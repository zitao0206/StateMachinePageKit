//
//  BaseZeroViewState.m
//  MDStatePageKit
//
//  Created by Leon0206 on 2018/5/13.
//

#import "BaseZeroViewState.h"

@implementation BaseZeroViewState

- (void)didEnterWithPreviousState:(GKState *)preState
{
    NSLog(@"did Enter Zero State....");
}

- (void)willExitWithNextState:(GKState *)nextState
{
    NSLog(@"will Exit Zero State....");
}


@end
