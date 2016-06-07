//
//  ProgressTableViewCell.h
//  CirculerProgressview
//
//  Created by Chandan Chavan on 16/05/16.
//  Copyright © 2016 Chandan Chavan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBCircularProgressBarView.h"


@interface ProgressTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet MBCircularProgressBarView *progressBar;
@property (weak, nonatomic) IBOutlet UILabel *lblTest;

@end
