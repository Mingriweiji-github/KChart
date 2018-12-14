//
//  SecondDetailController.m
//  KChart-master
//
//  Created by Roc01 on 2018/12/14.
//  Copyright © 2018 Roc.iMac01. All rights reserved.
//

#import "SecondDetailController.h"
#import "AAChartKitLib/AAChartConfiger/AAChartKit.h"

@interface SecondDetailController ()
@property (nonatomic, strong) AAChartView *chartView;
@property (nonatomic, strong)  AAChartModel *chartModel;

@end

@implementation SecondDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _chartView = [[AAChartView alloc] init];
    _chartView.frame = CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height -250);
    [self.view addSubview:self.chartView];
    
    switch (self.chartType) {
        case 1:
        _chartModel = AAObject(AAChartModel)
        .chartTypeSet(AAChartTypeLine)
        .titleSet(@"1 VS 3")
        .subtitleSet(@"haha")
        .categoriesSet(@[@"滑动距离",@"控球时间",@"传球成功率",@"传球次数", @"射门次数",@"射中次数",@"进球数",@"阻拦数目"])
        .yAxisTitleSet(@"Degrees Celsius")
        .seriesSet(@[
                     AAObject(AASeriesElement)
                     .nameSet(@"2017")
                     .dataSet(@[@6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @26.5, @23.3]),
                     ])
        ;

        break;
        
        default:
        break;
    }
    
    [self.chartView aa_drawChartWithChartModel:self.chartModel];

    
}
- (void)configModelWithType:(NSString *)type{
}


@end
