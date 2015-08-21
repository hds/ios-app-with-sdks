//
//  TSKThing.m
//  TheSDK
//
//  Created by Stainsby, Hayden on 21/08/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

#import "TSKThing.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation TSKThing

- (instancetype)initWithName:(NSString *)name
{
    self = [self init];
    if (self)  {
        _name = name;
    }
    
    return self;
}

- (NSString *)description
{
    NSMutableArray *characterStrings = [NSMutableArray array];
    for (NSUInteger i = 0; i < self.name.length; i++)  {
        [characterStrings addObject:[self.name substringWithRange:NSMakeRange(i, 1)]];
    }
    
    return [[[characterStrings.rac_sequence map:^NSString *(NSString *letter) {
        return [NSString stringWithFormat:@"*%@*", letter];
    }] array] componentsJoinedByString:@" "];
}

@end
