#import "Level1.h"
#import "Doctor.h"



@implementation Level1{

}

+(CCScene *) scene {
    CCScene *scene = [CCScene node];
	Level1 *layer = [Level1 node];
	[scene addChild: layer];
    return scene;
}


 
- (id)init{
    self = [super init];
    if (!self) return(nil);
    self.levelNumber = 1;
    [self setBackground];
	return self;
}



- (void) setBackground {
    CGSize screenSize = [[CCDirector sharedDirector] winSize];
    CCSprite *level1Background = [CCSprite spriteWithFile:@"backgroundLevel1.jpg"];
    [level1Background setPosition:CGPointMake(screenSize.width/2, screenSize.height/2)];
    [self addChild:level1Background z:0];
}

- (void) createDoctor {
    
}


@end
