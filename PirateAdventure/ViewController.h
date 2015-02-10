//
//  ViewController.h
//  PirateAdventure
//
//  Created by Alfred on 9/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
- (IBAction)actionButton:(UIButton *)sender;
- (IBAction)northButton:(UIButton *)sender;
- (IBAction)eastButton:(UIButton *)sender;
- (IBAction)southButton:(UIButton *)sender;
- (IBAction)westButton:(UIButton *)sender;

@property (nonatomic, readwrite) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

@end

