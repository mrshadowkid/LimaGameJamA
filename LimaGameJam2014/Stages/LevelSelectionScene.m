#import "LevelSelectionScene.h"
#import "Level1.h"


@implementation LevelSelectionScene

+(CCScene *) scene {
    CCScene *scene = [CCScene node];
	LevelSelectionScene *layer = [LevelSelectionScene node];
	[scene addChild: layer];
    return scene;
}


- (id)init
{
    self = [super init];
    if (!self) return(nil);
    
    CCLabelTTF *label = [CCLabelTTF labelWithString:@"Doc's World" fontName:@"Chalkduster" fontSize:60.0f];
    label.position = ccp(500, 600);
    label.color = ccWHITE;
    [self addChild:label z:1];
    
    [self showLevelButtons];
    
	return self;
}

- (void) showLevelButtons {
    
    CCMenuItem *level1 = [CCMenuItemImage itemWithNormalImage:@"TileLevel1.png" selectedImage:@"TileLevel1.png" disabledImage:@"TileLevel1.png" target:self selector:@selector(goToLevel:)];
    CCMenuItem *level2 = [CCMenuItemImage itemWithNormalImage:@"TileLevel1.png" selectedImage:@"TileLevel1.png" disabledImage:@"TileLevel1.png" target:self selector:@selector(goToLevel:)];
    CCMenuItem *level3 = [CCMenuItemImage itemWithNormalImage:@"TileLevel1.png" selectedImage:@"TileLevel1.png" disabledImage:@"TileLevel1.png" target:self selector:@selector(goToLevel:)];
    CCMenuItem *level4 = [CCMenuItemImage itemWithNormalImage:@"TileLevel1.png" selectedImage:@"TileLevel1.png" disabledImage:@"TileLevel1.png" target:self selector:@selector(goToLevel:)];
    CCMenuItem *level5 = [CCMenuItemImage itemWithNormalImage:@"TileLevel1.png" selectedImage:@"TileLevel1.png" disabledImage:@"TileLevel1.png" target:self selector:@selector(goToLevel:)];
    level1.tag = 1;
    level2.tag = 2;
    level3.tag = 3;
    level4.tag = 4;
    level5.tag = 5;
    CCMenu *menu = [CCMenu menuWithItems: level1, level2, level3, level4, level5, nil];
    menu.position = ccp(0, 0);
    level1.position = ccp(200, 450);
    level2.position = ccp(400, 450);
    level3.position = ccp(600, 450);
    level4.position = ccp(800, 450);
    level5.position = ccp(200, 250);
    [self addChild:menu z:1];
}



- (void)goToLevel:(id)sender {
    CCMenuItem *buttonTapped = (CCMenuItem *)sender;
    int levelSelected = buttonTapped.tag;
    switch (levelSelected) {
        case 1:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[Level1 scene]]];
            break;
        case 2:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
            break;
        case 3:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
            break;
        case 4:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
            break;
        case 5:
            [[CCDirector sharedDirector] replaceScene:[CCTransitionFade transitionWithDuration:0.3f scene:[LevelSelectionScene scene]]];
            break;
        default:
            break;
    }
}

@end
