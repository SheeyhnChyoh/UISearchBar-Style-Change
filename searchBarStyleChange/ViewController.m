//
//  ViewController.m
//  searchBarStyleChange
//
//  Created by Longcai on 16/3/25.
//  Copyright (c) 2016年 Longcai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UISearchBar * searchbar = [[UISearchBar alloc]initWithFrame:CGRectMake(20, 120, 100, 30)];
    NSLog(@"%@,%lu",[searchbar.subviews[0] class],(unsigned long)searchbar.subviews.count);
//    [searchbar.subviews[0] setBackgroundColor:[UIColor redColor]];
    searchbar.backgroundColor = [UIColor redColor];
    [self.view addSubview:searchbar];
    searchbar.backgroundImage = [self imageWithColor:[UIColor clearColor] size:searchbar.bounds.size];
}

//取消searchbar背景色
- (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
