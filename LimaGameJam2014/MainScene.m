#import "MainScene.h"
#import "LevelSelectionScene.h"
// hello
@implementation MainScene



+(CCScene *) scene {
    CCScene *scene = [CCScene node];
	MainScene *layer = [MainScene node];
	[scene addChild: layer];
    return scene;
}

-(id) init{
	if( (self=[super init])) {
        
        
        CCLabelTTF *label = [CCLabelTTF labelWithString:@"Doc's World" fontName:@"Chalkduster" fontSize:60.0f];
        label.position = ccp(500, 600);
        label.color = ccWHITE;
        [self addChild:label z:1];
    
        CCMenuItem *startButton = [CCMenuItemImage itemWithNormalImage:@"btnPlay.png" selectedImage:@"btnPlay.png" disabledImage:@"btnPlay.png" target:self selector:@selector(startGame:)];
        CCMenuItem *settingsButton = [CCMenuItemImage itemWithNormalImage:@"btnOptions.png" selectedImage:@"btnOptions.png" disabledImage:@"btnOptions.png" target:self selector:@selector(goToSettings::)];
        startButton.tag = 1;
        settingsButton.tag = 2;
        CCMenu *menu = [CCMenu menuWithItems: startButton, settingsButton, nil];
        menu.position = ccp(0, 0);
        
        startButton.position = ccp(500, 500);
        settingsButton.position = ccp(500, 300);
        [self addChild:menu z:1];
        
	}
	return self;
}


#pragma mark - Buttons

- (void)startGame:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
}

- (void)goToSettings:(id)sender {
    [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
}

@end