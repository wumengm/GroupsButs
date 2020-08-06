//

@interface ExpandTouchSpaceButton : UIButton

/**
 扩大热区范围 例如上下左右各扩大10 (-10 , -10, -10 , -10) 如果设置正值则会将按钮可点击区域缩小
 */
@property (nonatomic, assign) UIEdgeInsets expandEdgeInsets;

/**
 实际可点击范围
 */
@property (nonatomic, assign, readonly) CGRect realTouchBouns;

@end
