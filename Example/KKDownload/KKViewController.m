//
//  KKViewController.m
//  KKDownload
//
//  Created by chubao on 05/10/2024.
//  Copyright (c) 2024 chubao. All rights reserved.
//

#import "KKViewController.h"
#import "KKTestApi.h"

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[KKTestApi new] testMethod];
    [[KKTestApi new] testLog];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
