//
//  FilmReviewCardView.m
//  DingDongMovie
//
//  Created by dllo on 15/9/12.
//  Copyright (c) 2015年 Xu Ding. All rights reserved.
//

#import "DX_FilmReviewCardView.h"

@implementation DX_FilmReviewCardView

- (void)dealloc
{
    [_starsLabel release];
    [_contentLabel release];
    [_createAtLabel release];
    [_usernameLabel release];
    [_usernameImageView release];
    [_filmBackgroundView release];
    [super dealloc];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createFilmReviewCardSubviews];
    }
    return self;
}

// 创建子视图
- (void)createFilmReviewCardSubviews
{
    // 背景视图
    self.filmBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.filmBackgroundView.backgroundColor = [UIColor colorWithWhite:0.925 alpha:1.000];
    self.filmBackgroundView.layer.shadowColor = [UIColor grayColor].CGColor;
    self.filmBackgroundView.layer.shadowOffset = CGSizeMake(1, 3);
    self.filmBackgroundView.layer.shadowOpacity = 0.5;
    self.filmBackgroundView.layer.shadowRadius = 5;
    [self addSubview:_filmBackgroundView];
    
    // 用户头像
    self.usernameImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 40 * OffHeight, 40 * OffHeight)];
    self.usernameImageView.layer.cornerRadius = (40 *OffHeight) / 2;
    self.usernameImageView.clipsToBounds = YES;
    [self.filmBackgroundView addSubview:_usernameImageView];
    
    // 用户名称
    self.usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.usernameImageView.frame.origin.x + self.usernameImageView.frame.size.width + 10, self.usernameImageView.frame.origin.y, self.frame.size.width - 10 - self.usernameImageView.frame.size.width - 10 - 10, 20 * OffHeight)];
    self.usernameLabel.textColor = [UIColor grayColor];
    self.usernameLabel.font = [UIFont systemFontOfSize:17];
    self.usernameLabel.textAlignment = NSTextAlignmentLeft;
    [self.filmBackgroundView addSubview:_usernameLabel];
    
    // 创建评论时间
    self.createAtLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.usernameLabel.frame.origin.x, self.usernameLabel.frame.origin.y + self.usernameLabel.frame.size.height, self.usernameLabel.frame.size.width, self.usernameLabel.frame.size.height * OffHeight)];
    self.createAtLabel.textColor = [UIColor grayColor];
    self.createAtLabel.font = [UIFont systemFontOfSize:15];
    self.createAtLabel.textAlignment = NSTextAlignmentLeft;
    [self.filmBackgroundView addSubview:_createAtLabel];
    
    // 内容
    self.contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.usernameImageView.frame.origin.x, self.createAtLabel.frame.origin.y + self.createAtLabel.frame.size.height + 5, self.frame.size.width - 20, 80 * OffHeight)];
    self.contentLabel.font = [UIFont systemFontOfSize:16];
    self.contentLabel.textAlignment = NSTextAlignmentLeft;
    self.contentLabel.numberOfLines = 4;
    [self.filmBackgroundView addSubview:_contentLabel];
    
    // 星级
    self.starsLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.contentLabel.frame.origin.x, self.contentLabel.frame.origin.y + self.contentLabel.frame.size.height + 5, self.contentLabel.frame.size.width, 15 * OffHeight)];
    self.starsLabel.textAlignment = NSTextAlignmentLeft;
    self.starsLabel.textColor = [UIColor grayColor];
    [self.filmBackgroundView addSubview:_starsLabel];
    
    // 释放
    [_starsLabel release];
    [_contentLabel release];
    [_createAtLabel release];
    [_usernameLabel release];
    [_usernameImageView release];
    [_filmBackgroundView release];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
