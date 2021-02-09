//
//  Person.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@implementation Person
@synthesize fname, lname;

-(void) setPersonData :(NSString *) fn :(NSString *) ln
{
    fname = fn;
    lname = ln;
}
-(void)printPersonData{
NSLog(@"\n Person data: first name = %@ \n last name = %@ " ,fname , fname);
}
@end
