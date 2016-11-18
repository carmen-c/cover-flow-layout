//
//  CoverFlowLayout.m
//  Cover Flow Layout
//
//  Created by carmen cheng on 2016-11-17.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "CoverFlowLayout.h"

@implementation CoverFlowLayout

-(void)prepareLayout{
    [super prepareLayout];
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(200, 200);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
    self.minimumLineSpacing = 20;
    
}

-(CGSize)collectionViewContentSize{
    return [super collectionViewContentSize];
}

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray *attributes = [super layoutAttributesForElementsInRect:rect];
    
    CGRect visibleRegion;
    visibleRegion.origin = self.collectionView.contentOffset;
    visibleRegion.size = self.collectionView.bounds.size;
//
//    for (UICollectionViewLayoutAttributes *attribute in attributes) {
//        CGFloat x = attribute.center.x;
//        CGFloat f = [self getScaleFactor:x];
//        
//        attribute.transform3D = CATransform3DMakeScale(f, 1, 1);
//        attribute.alpha = f;
//        
//    }
    
    
//    CATransform3D CATransform3DMakeScale(CGFloat sx, CGFloat sy, CGFloat sz);
//    (sx, sy, sz)': * t' = [f 0 0 0; 0 f 0 0; 0 0 f 0; 0 0 0 1].
//
//
    return attributes;

}

//-(CGFloat)getScaleFactor:(CGFloat)x {
//    CGFloat minSize = 0.8;
//    CGFloat mid = self.collectionView.center.x;
//    return minSize + ((1 - minSize) * (fabs(x - mid) /mid));
//}
@end
