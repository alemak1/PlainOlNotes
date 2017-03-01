//
//  DetailViewController.h
//  Plain 'Ol Notes
//
//  Created by Aleksander Makedonski on 3/1/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UITextView *tView;

@end

