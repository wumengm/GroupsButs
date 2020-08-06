//

#import "ExpandTouchSpaceButton.h"

@interface ExpandTouchSpaceButton ()

@end

@implementation ExpandTouchSpaceButton

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    
    return CGRectContainsPoint(self.realTouchBouns, point);
}

- (CGRect)realTouchBouns {
    
    self.expandEdgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);
    return CGRectMake(_expandEdgeInsets.left,
                      _expandEdgeInsets.top,
                      self.width - _expandEdgeInsets.left - _expandEdgeInsets.right,
                      self.height - _expandEdgeInsets.top - _expandEdgeInsets.bottom);
}

- (BOOL)isExclusiveTouch {
    return YES;
}

@end
