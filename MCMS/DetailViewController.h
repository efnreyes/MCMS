//
//  DetailViewController.h
//  MCMS
//
//  Created by Efrén Reyes Torres on 7/29/14.
//  Copyright (c) 2014 Efrén Reyes Torres. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *detailView;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *description;
@end
