//
//  ViewController.m
//  PirateAdventure
//
//  Created by Alfred on 9/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "ViewController.h"
#import "PAFactory.h"
#import "PATile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    PAFactory *factory = [[PAFactory alloc] init];
//    NSArray *tiles = [factory tiles];
//    NSLog(@"%@", tiles);
    
    self.currentPoint = CGPointMake(0,0);
    PAFactory *factory = [[PAFactory alloc] init];
    self.tiles = [factory tiles];
    NSLog(@"%f %f", self.currentPoint.x, self.currentPoint.y);
    [self updateTile];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButton:(UIButton *)sender {
}

- (IBAction)northButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButton:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

#pragma mark - helper method
-(void)updateTile
{
    PATile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
}
-(void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}
- (BOOL)tileExistsAtPoint:(CGPoint)point
{
    if(point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]){
        return NO;
    }
    else {
        return YES;
    }
}
@end
