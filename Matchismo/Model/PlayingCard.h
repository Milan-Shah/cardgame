//
//  PlayingCard.h
//  Matchismo
//
//  Created by Milan Shah on 10/8/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger) maxRank;



@end
