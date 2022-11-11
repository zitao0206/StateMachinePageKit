//
//  BaseStateProtocal.h
//  MDStatePageKit
//
//  Created by Leon0206 on 2018/5/13.
//

#ifndef BaseStateProtocal_h
#define BaseStateProtocal_h

@protocol BaseStateDelegate <NSObject>
@required

- (UIView *)loadStateSubViews;

@end

#endif /* XYBaseStateProtocal_h */
