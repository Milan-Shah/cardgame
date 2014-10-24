//
//  ViewController.m
//  Matchismo
//
//  Created by Milan Shah on 10/8/14.
//  Copyright (c) 2014 Milan Shah. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()


@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

-(CardMatchingGame *)game {
    
    if (! _game) _game = [[CardMatchingGame alloc]initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
    
    return _game;
    
}



-(Deck *)createDeck { //abstract
    return nil;
}




- (IBAction)touchCardButton:(UIButton *)sender {
    
    NSUInteger cardIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];

}

-(void) updateUI {
    
    for (UIButton *cardButton in self.cardButtons) {
       NSUInteger cardIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card =[self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]   forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %tu",self.game.score];
}

-(NSString *)titleForCard:(Card *)card {
    
    return card.chosen ? card.contents: @"";
}

-(UIImage *)backgroundImageForCard:(Card *)card {
    
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
