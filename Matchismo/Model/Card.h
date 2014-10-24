//
//  Card.h
//  Matchismo
//
//  Created by Milan Shah on 10/8/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
