//
//  Deck.h
//  Matchismo
//
//  Created by Milan Shah on 10/8/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard:(Card *)card atTop: (BOOL) atTop;
-(void) addCard: (Card *)card;
-(Card *)drawRandomCard;

@end
