//
//  ViewController.m
//  ZadanieRafala
//
//  Created by Marcin Mielniczek on 4/8/16.
//  Copyright © 2016 Marcin Mielniczek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldModel;
@property (weak, nonatomic) IBOutlet UITextField *textFieldCombustion;
@property (strong, nonatomic) IBOutlet UIButton *buttonKilometers;
@property (strong, nonatomic) IBOutlet UIButton *buttonPower;
@property (strong, nonatomic) IBOutlet UIButton *buttonRoadDistance;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    return YES;
}

-(IBAction)showPower:(id)sender{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"Einheit"
                                                            delegate:self
                                                   cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:nil
                                                   otherButtonTitles:@"PS",@"kW", nil];
    actionSheet.tag = 1;
  [actionSheet showInView:self.view];
}

-(IBAction)showKilometer:(id)sender{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"Leistung"
                                                            delegate:self
                                                   cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:nil
                                                   otherButtonTitles:@"140", @"280", nil];
    actionSheet.tag = 2;
    [actionSheet showInView:self.view];
}

-(IBAction)showRoadDistance:(id)sender {
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"JahresKilometers"
                                                            delegate:self
                                                   cancelButtonTitle:@"Cancel"
                                              destructiveButtonTitle:nil
                                                   otherButtonTitles:@"10.000<15.000",@"15.000<", nil];
    actionSheet.tag = 3;
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (actionSheet.tag) {
        case 1: {
            switch (buttonIndex) {
                case 0:
                    [self.buttonPower setTitle:@"PS" forState:UIControlStateNormal];
                    [self.buttonKilometers setTitle:@"140" forState:UIControlStateNormal];
                    break;
                case 1:
                    [self.buttonPower setTitle:@"kW" forState:UIControlStateNormal];
                    [self.buttonKilometers setTitle:@"280" forState:UIControlStateNormal];
                    break;
               
                default:
                    break;
            }
        case 2: {
            switch (buttonIndex) {
                case 0:
                    [self.buttonKilometers setTitle:@"140" forState:UIControlStateNormal];
                    [self.buttonPower setTitle:@"PS" forState:UIControlStateNormal];
                    break;
                case 1:
                    [self.buttonKilometers setTitle:@"280" forState:UIControlStateNormal];
                    [self.buttonPower setTitle:@"kW" forState:UIControlStateNormal];
                    break;
            }
        }
        case 3: {
            switch(buttonIndex){
                case 0:
                    [self.buttonRoadDistance setTitle:@"5.000<10.000"  forState:UIControlStateNormal];
                    break;
                case 1:
                    [self.buttonRoadDistance setTitle:@"10.000<15.000" forState:UIControlStateNormal];
                    break;
                case 2:
                    [self.buttonRoadDistance setTitle:@"15.000<" forState:UIControlStateNormal];
                    break;
            }
       
            
        }
            break;
        }
        default:
            break;
    }
}

@end
