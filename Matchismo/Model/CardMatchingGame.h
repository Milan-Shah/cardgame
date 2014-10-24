//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Milan Shah on 10/8/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(instancetype)initWithCardCount: (NSUInteger) count usingDeck:(Deck *)deck;

-(void) chooseCardAtIndex: (NSUInteger) index;
-(Card *)cardAtIndex: (NSUInteger)index;


@property (nonatomic, readonly) NSInteger *score;



@end
