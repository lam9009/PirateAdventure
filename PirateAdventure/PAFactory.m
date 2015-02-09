//
//  PAFactory.m
//  PirateAdventure
//
//  Created by Alfred on 9/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"

@implementation PAFactory

-(NSArray *)tiles
{
    PATile *tile1 = [[PATile alloc] init];
    tile1.story = @"story 1";
    PATile *tile2 = [[PATile alloc] init];
    tile2.story = @"story 2";
    PATile *tile3 = [[PATile alloc] init];
    tile3.story = @"story 3";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    PATile *tile4 = [[PATile alloc] init];
    tile4.story = @"story 4";
    PATile *tile5 = [[PATile alloc] init];
    tile5.story = @"story 5";
    PATile *tile6 = [[PATile alloc] init];
    tile6.story = @"story 6";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    PATile *tile7 = [[PATile alloc] init];
    tile7.story = @"story 7";
    PATile *tile8 = [[PATile alloc] init];
    tile8.story = @"story 8";
    PATile *tile9 = [[PATile alloc] init];
    tile9.story = @"story 9";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    PATile *tile10 = [[PATile alloc] init];
    tile10.story = @"story 10";
    PATile *tile11 = [[PATile alloc] init];
    tile11.story = @"story 11";
    PATile *tile12 = [[PATile alloc] init];
    tile12.story = @"story 12";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
   
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
}
@end
