//
//  ViewController.m
//  expand_button
//
//  Created by hxxc on 2020/3/25.
//  Copyright © 2020 xjc. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+HXEnlargeTouchArea.h"
#import "UILabel+HXVertical.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel * textLabel;
@property(nonatomic,strong)NSArray * array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array = @[@"厉害了，我的国",@"china number one",@"大国崛起之路",@"我和我的祖国",@"男儿当自强",@"武汉加油",@"中国加油"];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 100, 44);
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(touchButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [button setTouchExpandEdgeWithTop:30 right:30 bottom:30 left:30];
    
    _textLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 30, 150)];
    _textLabel.center = CGPointMake(button.center.x, button.center.y - 130);
    _textLabel.backgroundColor = [UIColor lightGrayColor];
    _textLabel.textAlignment = NSTextAlignmentCenter;
    _textLabel.verticalText = @"厉害了，我的国";
    [self.view addSubview:_textLabel];
    
    // Do any additional setup after loading the view.
}

-(void)touchButton{
    
    _textLabel.verticalText = _array[arc4random()%7];
}


@end
