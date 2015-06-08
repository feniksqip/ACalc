//
//  ViewController.h
//  ACalculator
//
//  Created by Admin on 08/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Solve.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *resultView;

- (IBAction)btnNumber:(id)sender;
- (IBAction)btnFunction:(id)sender;
- (IBAction)btnResult:(id)sender;

- (IBAction)btnClear:(id)sender;




@end

