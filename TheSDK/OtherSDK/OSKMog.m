//
//  OSKMog.m
//  TheSDK
//
//  Created by Stainsby, Hayden on 21/08/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

#import "OSKMog.h"

@implementation OSKMog

- (instancetype)init
{
    self = [super init];
    if (self)  {
        _creationTime = [NSDate date];
    }
    
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Mog (created on: %@)", self.creationTime];
}

@end
