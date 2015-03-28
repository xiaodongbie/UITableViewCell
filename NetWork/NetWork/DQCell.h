//
//  DQCell.h
//  WKD
//
//  Created by wankr on 15/3/28.
//  Copyright (c) 2015年 Wankr Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface WKNew : NSObject
@property (nonatomic, strong) NSString *authorHeader;//发帖人头像
@property (nonatomic, strong) NSString *authorName;//发帖人昵称
@property (nonatomic, strong) NSString *createTime;//帖子创建时间
@property (nonatomic, strong) NSString *diaryContent;//帖子文字内容
@property (nonatomic, strong) NSString *goodNum;//赞数量
@property (nonatomic, strong) NSString *badNum;//差评数量
@property (nonatomic, strong) NSString *commentNum;//评论数量
@property (nonatomic, strong) NSString *shareNum;//分享数量
@end

@interface DQCell : UITableViewCell
+(instancetype)cellWithTableView:(UITableView *)tableView setArray:(NSMutableArray*)array setIndexPath:(NSInteger)row;
@end
