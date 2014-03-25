//
//  ViewController.m
//  UIDeviceReview
//
//  Created by wangtao on 14-3-25.
//  Copyright (c) 2014年 wangtao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.textView setContentSize:CGSizeMake(320.0f, 600.0f)];
    
    NSLog(@"multitasking supported=%d", [UIDevice currentDevice].multitaskingSupported);
    NSLog(@"name=%@", [UIDevice currentDevice].name);
    NSLog(@"systemname=%@", [UIDevice currentDevice].systemName);
    NSLog(@"systemVersion=%@", [UIDevice currentDevice].systemVersion);
    NSLog(@"model=%@", [UIDevice currentDevice].model);
    NSLog(@"localizeModel=%@", [UIDevice currentDevice].localizedModel);
    NSLog(@"userInterfaceIdiom=%d", [UIDevice currentDevice].userInterfaceIdiom);
    NSLog(@"identifierForVendor=%@", [UIDevice currentDevice].identifierForVendor);
    
    // Getting the Device Orientation
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    NSLog(@"orientation=%d", [UIDevice currentDevice].orientation);
    
    [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
    
    // Getting the Device Battery State
    
    /*
     Discussion
     Enable battery monitoring if your app needs to be notified of changes to the battery state, or if you want to check the battery charge level.
     
     The default value of this property is NO, which:
     
     Disables the posting of battery-related notifications
     Disables the ability to read battery charge level and battery state
     */
    
    /*
     typedef enum {
     UIDeviceBatteryStateUnknown,未知状态
     UIDeviceBatteryStateUnplugged, 未充电状态
     UIDeviceBatteryStateCharging, 充电状态，但电量少于100%
     UIDeviceBatteryStateFull, 充电状态，电量等于100%
     } UIDeviceBatteryState;
     */
    [UIDevice currentDevice].batteryMonitoringEnabled = YES;
    NSLog(@"batteryLevel=%f", [UIDevice currentDevice].batteryLevel);
    NSLog(@"batteryState=%d", [UIDevice currentDevice].batteryState);
    NSLog(@"batteryMonitoringEnabled=%d", [UIDevice currentDevice].batteryMonitoringEnabled);
    
    // Using the Proximity Sensor 近场感应器
    [UIDevice currentDevice].proximityMonitoringEnabled = YES;
    NSLog(@"proximityState=%d", [UIDevice currentDevice].proximityState);
    
    // playInputClick
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
