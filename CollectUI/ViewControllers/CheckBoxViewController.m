//  ___                _
// / __|___  ___  __ _| |___
//| (_ / _ \/ _ \/ _` |   -_)
// \___\___/\___/\__, |_\___|
//               |___/
//
//  Created by 李小争 on 16/6/14.
//  Copyright © 2016年 citynight. All rights reserved.
//

#import "CheckBoxViewController.h"
#import "Checkbox.h"

@interface CheckBoxViewController ()
@property (nonatomic, assign) Boolean check;
@property (nonatomic, strong) Checkbox *checkbox;
@end

@implementation CheckBoxViewController


#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.checkbox = ({
        Checkbox *checkbox = [[Checkbox alloc] initWithFrame:CGRectMake(50, 100, 45, 45)];
        checkbox.backgroundColor = [UIColor whiteColor];
        checkbox.checked = self.check;
        [checkbox addTarget:self action:@selector(checkBoxTapped:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:checkbox];
        checkbox;
    });
}
- (void)checkBoxTapped:(Checkbox *)sender
{
    self.check = !self.check;
    [self.checkbox setChecked:self.check];
}

@end
