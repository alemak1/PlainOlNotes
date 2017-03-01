//
//  Data.h
//  Plain 'Ol Notes
//
//  Created by Aleksander Makedonski on 3/1/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//


#import <Foundation/Foundation.h>

#define kDefaultText @"New Note"
#define kAllNotes @"notes"
#define kDetailView @"showDetail"

@interface Data : NSObject

+(NSMutableDictionary*) getAllNotes;
+(void) setCurrentKey:(NSString*)key;
+(NSString*) getCurrentKey;
+(void) setNoteForCurrentKey: (NSString*)note;
+(void) setNote:(NSString*)note forKey:(NSString*)key;
+(void) removeNoteForKey:(NSString*)key;

@end

