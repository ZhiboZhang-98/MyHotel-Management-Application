//
//  Person.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Person_h
#define Person_h


#endif /* Person_h */

@interface Person : NSObject
@property NSString *fname, *lname;

-(void) setPersonData :(NSString *) fn :(NSString *) ln;
-(void)printPersonData;
@end
