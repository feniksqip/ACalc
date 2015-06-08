//
//  ViewController.m
//  ACalculator
//
//  Created by Admin on 08/06/15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

float tempX;
float tempY;
int selectedFunc;
int newCalc;

NSString *tempStr;
//Solve *solve;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resultView.text = @"0";
    tempX = 0.0f;
    tempY = 0.0f;
    tempStr = @"0";
    selectedFunc = 0;
    newCalc = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString*)convertFloatToString: (float) digit {
    NSString * newStr = [NSString new];
    newStr = [NSNumber numberWithFloat:digit].stringValue;
    if (![self.resultView.text isEqualToString:@"0"] && (selectedFunc == 0) ) {
        return [NSString stringWithFormat:@"%@%@", self.resultView.text, newStr];
    } else if ( ![self.resultView.text isEqualToString:@"0"] && (selectedFunc > 0) )  {
        return [NSString stringWithFormat:@"%@%@", self.resultView.text, newStr];
    } else {
        return [NSString stringWithFormat:@"%@", newStr];
    }

}

- (IBAction)btnNumber:(id)sender {
    
    if(newCalc == 0) {
        self.resultView.text = @"0";
        newCalc = 1;
    }
    
    if ([sender tag] >= 100 && ([sender tag] <= 109)) {
       self.resultView.text = [self convertFloatToString:(([sender tag])%100)];
    } else if ([sender tag] == 110 && (![self.resultView.text isEqualToString:@"0"])) {
        self.resultView.text = [self convertFloatToString:0];
    }
        
    
}

- (IBAction)btnFunction:(id)sender {
    if ([sender tag] != 205) { // Functions
        tempX = [self.resultView.text floatValue];
        selectedFunc = [sender tag];
        self.resultView.text = @"0";
        tempStr = @"0";
      
    } else {
        
    }
}

- (IBAction)btnResult:(id)sender {
    if (selectedFunc != 0) {
        
        NSString * newStr = [NSString new];
        
        switch ( selectedFunc ) {
            case 201:
//                self.resultView.text =  [self convertFloatToString: addFunc(tempX, [self.resultView.text floatValue])];
                newStr = [NSNumber numberWithFloat:addFunc(tempX, [self.resultView.text floatValue])].stringValue;
                self.resultView.text = [NSString stringWithFormat:@"%@", newStr ];
                [self clearData];
                break;
            case 202:
//                self.resultView.text =  [self convertFloatToString: deductFunc(tempX, [self.resultView.text floatValue])];
                newStr = [NSNumber numberWithFloat:deductFunc(tempX, [self.resultView.text floatValue])].stringValue;
                self.resultView.text = [NSString stringWithFormat:@"%@", newStr ];
                [self clearData];
                break;
            case 203:
               // selectedFunc = 0;
               // self.resultView.text =  [self convertFloatToString: multiplyFunc(tempX, [self.resultView.text floatValue])];
                
                newStr = [NSNumber numberWithFloat:multiplyFunc(tempX, [self.resultView.text floatValue])].stringValue;
                self.resultView.text = [NSString stringWithFormat:@"%@", newStr ];
                [self clearData];
                break;
            case 204:
//                self.resultView.text =  [self convertFloatToString: divideFunc(tempX, [self.resultView.text floatValue])];
                newStr = [NSNumber numberWithFloat:divideFunc(tempX, [self.resultView.text floatValue])].stringValue;
                self.resultView.text = [NSString stringWithFormat:@"%@", newStr ];
                [self clearData];
                break;
                
            default:
                break;
        }
        
    } else {
    }
    
}

- (IBAction)btnClear:(id)sender {
    [self clearData];
    self.resultView.text = @"0";
}

-(void) clearData {
    selectedFunc = 0;
    tempX = 0.0f;
    newCalc = 0;
}

@end
