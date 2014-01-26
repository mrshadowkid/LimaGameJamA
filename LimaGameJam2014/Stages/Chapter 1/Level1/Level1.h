#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Level1 : CCScene {
    
}


@property int levelNumber;
@property CGRect worldRect;

+ (CCScene *) scene;
- (id) init;


@end
