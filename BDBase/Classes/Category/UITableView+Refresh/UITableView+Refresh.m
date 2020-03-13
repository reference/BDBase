/**
 MIT License
 
 Copyright (c) 2018 Scott Ban (https://github.com/reference/BDBaseController)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */
#import "UITableView+Refresh.h"

@implementation UITableView (Refresh)

- (void)setHeaderWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock {
    if (self.mj_header == nil) {
        MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingBlock:refreshingBlock];
        header.stateLabel.font = [UIFont systemFontOfSize:12];
        header.lastUpdatedTimeLabel.font = [UIFont systemFontOfSize:9];
        self.mj_header = header;
    }
}

- (void)setFooterWithRefreshingBlock:(MJRefreshComponentRefreshingBlock)refreshingBlock {
    if (self.mj_footer == nil) {
        MJRefreshAutoNormalFooter *footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:refreshingBlock];
        footer.stateLabel.font = [UIFont systemFontOfSize:12];
        self.mj_footer = footer;
    }
}

- (void)endRefreshing:(BOOL)noMoreData {
    [self.mj_header endRefreshing];
    if (noMoreData) {
        [self.mj_footer endRefreshingWithNoMoreData];
    } else {
        [self.mj_footer endRefreshing];
    }
}
@end