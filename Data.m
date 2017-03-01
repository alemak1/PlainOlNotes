//
//  Data.m
//  Plain 'Ol Notes
//
//  Created by Aleksander Makedonski on 3/1/17.
//  Copyright © 2017 Changzhou Panda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Data.h"

@implementation Data

static NSMutableDictionary* allNotes = nil;
static NSString* currentKey = nil;

+(NSMutableDictionary*) getAllNotes{
    
    if(allNotes == nil){
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[NSDictionary dictionaryWithContentsOfFile:[self filePath]];
    }
    
    return allNotes;
}

+(void) setCurrentKey:(NSString*)key{
    currentKey = key;
}

+(NSString*) getCurrentKey{
   
    return currentKey;
}

+(void) setNoteForCurrentKey: (NSString*)note{
    [self setNote:note forKey:currentKey];
}

+(void) setNote:(NSString*)note forKey:(NSString*)key{
    
    [allNotes setObject:note forKey:key];

}

+(void) removeNoteForKey:(NSString*)key{
    [allNotes removeObjectForKey:key];
    
}

+(void) saveNotes{
    [allNotes writeToFile:[self filePath] atomically:YES];
}


+(NSString*) filePath{
    NSArray* directories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* documents = [directories objectAtIndex:0];
    return [documents stringByAppendingPathComponent:kAllNotes];
}

@end
