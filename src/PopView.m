//
//  PopView.m
//  AlertController
//
//  Created by leon on 3/21/16.
//  Copyright © 2016 leon. All rights reserved.
//

#import "PopView.h"
//#import "AlertController.h"

@interface PopView ()

@property (weak, nonatomic) IBOutlet UIButton *dismissButton;

@end

@implementation PopView

+ (instancetype)popView {

    PopView *view = [[NSBundle mainBundle] loadNibNamed:@"PopView" owner:nil options:nil].firstObject;
    view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    return view;
}

- (instancetype)init {
    if (self = [super init]){
        NSAssert(NO, @"Use +popView instead");
    }
    return self;
}

- (void)dealloc {
    NSLog(@"%@ dealloc", self.class);
}

/**
 *  To dismiss current pop view.
 */
- (IBAction)dismissView:(UIButton *)sender {

//    NSString *actionTitle = @"OK";
//    NSString *message = @"Bye bye.";
#warning an alert controller should show before view disappears

}

@end
