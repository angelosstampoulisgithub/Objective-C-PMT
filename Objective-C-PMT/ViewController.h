//
//  ViewController.h
//  Objective-C-PMT
//
//  Created by Angelos Staboulis on 8/10/24.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property float pv;
@property float rate;
@property float nper;
- (double)pmt:(float)rate pv:(float) pv nper:(float) nper;
@property (weak) IBOutlet NSTextField *txtRate;
@property (weak) IBOutlet NSTextField *txtNPer;
@property (weak) IBOutlet NSTextField *txtPV;
@property (weak) IBOutlet NSTextField *txtPMT;
- (IBAction)btnCalculatePMT:(id)sender;
@property (weak) IBOutlet NSComboBox *comboBox;
- (IBAction)comboBox:(id)sender;

@end

