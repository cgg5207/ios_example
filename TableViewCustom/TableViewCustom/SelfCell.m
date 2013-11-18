 //
//  SelfCell.m
//  TableViewCustom
//
//  Created by chen john on 13-11-18.
//  Copyright (c) 2013年 chan john. All rights reserved.
//

#import "SelfCell.h"

@implementation SelfCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
