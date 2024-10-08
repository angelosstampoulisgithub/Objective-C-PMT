//
//  ViewController.m
//  Objective-C-PMT
//
//  Created by Angelos Staboulis on 8/10/24.
//

#import "ViewController.h"
#include <math.h>
@implementation ViewController

- (double)pmt:(float)rate pv:(float) pv nper:(float) nper{
    double expr = pow(1.0 + rate,(-1.0) * nper);
    double expression_primary = (pv*rate);
    double expression_secondary = 1 - expr;
    return expression_primary / expression_secondary;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)btnCalculatePMT:(id)sender {
    if ([[_comboBox stringValue]  isEqual: @"Year"]){
        _rate = (([_txtRate floatValue])/100.0);
        _pv = [_txtPV floatValue];
        _nper = [_txtNPer floatValue];
        [_txtPMT setStringValue:[NSString stringWithFormat:@"%.2f",[self pmt:_rate pv:_pv nper:_nper]]];
    }else{
        _rate = (([_txtRate floatValue])/100.0)/12.0;
        _pv = [_txtPV floatValue];
        _nper = [_txtNPer floatValue];
        [_txtPMT setStringValue:[NSString stringWithFormat:@"%.2f",[self pmt:_rate pv:_pv nper:_nper]]];
    }
    
}
- (IBAction)dropDown:(id)sender {
}
- (IBAction)comboBox:(id)sender {
}
@end
