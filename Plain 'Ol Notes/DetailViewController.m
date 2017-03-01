//
//  DetailViewController.m
//  Plain 'Ol Notes
//
//  Created by Aleksander Makedonski on 3/1/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

#import "DetailViewController.h"
#import "Data.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    NSString* currentNote = [[Data getAllNotes] objectForKey:[Data getCurrentKey]];
    if(![currentNote isEqualToString:kDefaultText]){
        self.tView.text = currentNote;
    } else {
        self.tView.text = @"";
    }
    
    [self.tView becomeFirstResponder];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) viewWillDisappear:(BOOL)animated{
    if(![self.tView.text isEqualToString:@""]){
        [Data setNoteForCurrentKey:self.tView.text];
    } else {
        [Data removeNoteForKey:[Data getCurrentKey]];
    }
    
    [Data saveNotes];
}
#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        [Data setCurrentKey:_detailItem];
        
        // Update the view.
        [self configureView];
    }
}


@end
