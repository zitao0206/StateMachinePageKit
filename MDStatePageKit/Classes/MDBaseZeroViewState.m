//
//  MDBaseZeroViewState.m
//  MDStatePageKit
//
//  Created by lizitao on 2018/5/13.
//

#import "MDBaseZeroViewState.h"

@implementation MDBaseZeroViewState

- (void)didEnterWithPreviousState:(GKState *)preState
{
    NSLog(@"did Enter Zero State....");
}

- (void)willExitWithNextState:(GKState *)nextState
{
    NSLog(@"will Exit Zero State....");
}


@end
