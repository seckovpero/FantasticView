//
//  FantasticView.m
//  FantasticView
//
//  Created by AspidaMacBook on 13/03/2018.
//  Copyright © 2018 AspidaMacBook. All rights reserved.
//

#import "FantasticView.h"

@implementation FantasticView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _colors =  [[NSMutableArray alloc] initWithObjects:[UIColor redColor],[UIColor greenColor],[UIColor orangeColor],[UIColor blueColor],[UIColor purpleColor], nil];
        _counter = 0;
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
            self.layer.backgroundColor = _colors[_counter%5].CGColor;
            _counter++;
        }];
        [timer fire];
    }
    return self;
}

@end
