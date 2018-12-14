//
//  ViewController.m
//  KChart-master
//
//  Created by Roc01 on 2018/12/14.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

#import "ViewController.h"
#import "SecondDetailController.h"
#import "SpecialChartVC.h"

#import "KChart-master-Bridging-Header.h"
@interface ViewController ()<IChartAxisValueFormatter,IChartValueFormatter>
@property (nonatomic, strong) LineChartView *lineChartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (void)initChartView{
    self.lineChartView = [[LineChartView alloc] initWithFrame:CGRectMake(10, 60, self.view.frame.size.width / 2, 300)];
    self.lineChartView.legend.form = ChartLegendFormNone;  //说明图标
self.lineChartView.dragEnabled = NO;   //拖动手势
self.lineChartView.pinchZoomEnabled = NO;    //捏合手势
self.lineChartView.rightAxis.enabled = NO;    //隐藏右Y轴
self.lineChartView.chartDescription.enabled = NO;    //不显示描述label
self.lineChartView.doubleTapToZoomEnabled = NO;    //禁止双击缩放      _linechartView.drawGridBackgroundEnabled = NO;
self.lineChartView.drawBordersEnabled    = NO;
    self.lineChartView.dragEnabled             = YES;     //拖动气泡
      [self.lineChartView animateWithXAxisDuration:2.20
                                       easingOption:ChartEasingOptionEaseOutBack];   //加载动画时长
      [self.view addSubview:self.lineChartView];
    
}
#pragma mark Actions

- (IBAction)click1:(id)sender {
    SecondDetailController *vc = [[SecondDetailController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}
- (IBAction)click2:(id)sender {
    
}
- (IBAction)click3:(id)sender {
    
}

@end
