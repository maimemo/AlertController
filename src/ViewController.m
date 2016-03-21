//
//  ViewController.m
//  AlertController
//
//  Created by leon on 3/21/16.
//  Copyright © 2016 leon. All rights reserved.
//

#import "ViewController.h"
//#import "AlertController.h"
#import "PopView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *debugLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)clickMe:(UIButton *)sender {

    [self log:@"Click Me"];
#warning an alert controller should show with following signature or the like

//    [AlertController alertWithTitle:@"Hello" message:@"" actionTitles: actions: alertStyle: inViewController:];
}

- (IBAction)showSecret:(UIButton *)sender {

    [self log:@"Show Secret"];
    [self.view addSubview:[PopView popView]];
}

- (void)log:(NSString *)text {
    self.debugLabel.text = text;
}

@end
