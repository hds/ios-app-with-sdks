//
//  ViewController.m
//  AppWithSDK
//
//  Created by Stainsby, Hayden on 21/08/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>
#import <TheSDK/TheSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *names = [self doSomething];
    
    NSArray *things = [[names.rac_sequence map:^TSKThing *(NSString *name) {
        TSKThing *thing = [[TSKThing alloc] initWithName:name];
        return thing;
    }] array];
    
    NSLog(@"Things: %@", things);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)doSomething
{
    NSArray *names = @[ @"Paco", @"Tummy", @"Pepe", @"Sinnombre" ];
    NSArray *filteredNames = [[names.rac_sequence
                               filter:^BOOL(NSString *name) {
                                   return [[name substringToIndex:1] compare:@"p" options:NSCaseInsensitiveSearch] == NSOrderedSame;
                               }] array];
    return filteredNames;
}

@end
