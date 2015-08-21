//
//  TSKThing.h
//  TheSDK
//
//  Created by Stainsby, Hayden on 21/08/15.
//  Copyright (c) 2015 Example. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TSKThing : NSObject

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
