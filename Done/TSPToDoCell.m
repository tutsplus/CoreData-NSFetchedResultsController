//
//  TSPToDoCell.m
//  Done
//
//  Created by Bart Jacobs on 24/07/14.
//  Copyright (c) 2014 Tuts+. All rights reserved.
//

#import "TSPToDoCell.h"

@implementation TSPToDoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
