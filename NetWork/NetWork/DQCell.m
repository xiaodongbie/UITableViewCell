//
//  DQCell.m
//  WKD
//
//  Created by wankr on 15/3/28.
//  Copyright (c) 2015年 Wankr Inc. All rights reserved.
//

#import "DQCell.h"
@implementation WKNew
@end
@interface DQCell()
@property (weak, nonatomic) IBOutlet UIImageView *authorHeader;
@property (weak, nonatomic) IBOutlet UILabel *authorName;

@property (weak, nonatomic) IBOutlet UILabel *createTime;
@property (weak, nonatomic) IBOutlet UILabel *diaryContent;
@property (weak, nonatomic) IBOutlet UIButton *goodNum;
@property (weak, nonatomic) IBOutlet UIButton *badNum;
@property (weak, nonatomic) IBOutlet UIButton *commentNum;
@property (weak, nonatomic) IBOutlet UIButton *shareNum;
@end


@implementation DQCell

+(instancetype)cellWithTableView:(UITableView *)tableView setArray:(NSMutableArray*)array setIndexPath:(NSInteger)row
{
    static NSString *ID = @"dqcell";
    DQCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        // 从xib中加载cell
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DQCell" owner:nil options:nil] lastObject];
        [cell setNews:[cell setArray:array setIndxPath:row]];
    
    }
    return cell;
    
}
-(WKNew*)setArray:(NSMutableArray*)array setIndxPath:(NSInteger)row{
    WKNew * new      =  [[WKNew alloc]init];
    new.authorHeader =  [array objectAtIndex:row];
    new.authorName   =  [array objectAtIndex:row];
    new.createTime   =  [array objectAtIndex:row];
    new.diaryContent =  [array objectAtIndex:row];
    return new;
}
- (void)setNews:(WKNew *)news
{
    self.authorHeader.image = [UIImage imageNamed:news.authorHeader];
    self.authorName.text = news.authorName;
    self.createTime.text = news.createTime;
    self.diaryContent.text=  news.diaryContent;
    self.goodNum.imageView.image = [UIImage imageNamed:@"icon_bad"];//临时图片。可集成SDWEBIMAGE
    self.badNum.imageView.image = [UIImage imageNamed:@"icon_bad"];
    self.commentNum.imageView.image = [UIImage imageNamed:@"icon_bad"];
    self.shareNum.imageView.image = [UIImage imageNamed:@"icon_bad"];
    
}
@end


