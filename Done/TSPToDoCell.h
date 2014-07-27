//
//  TSPToDoCell.h
//  Done
//
//  Created by Bart Jacobs on 24/07/14.
//  Copyright (c) 2014 Tuts+. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TSPToDoCellDidTapButtonBlock)();

@interface TSPToDoCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;

@property (copy, nonatomic) TSPToDoCellDidTapButtonBlock didTapButtonBlock;

@end
