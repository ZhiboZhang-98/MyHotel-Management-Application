//
//  Employee.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Employee_h
#define Employee_h


#endif /* Employee_h */

#import "Person.h"

@interface Employee : Person
@property NSString *employeeN, *psw;

-(void) setEmployeeData :(NSString *) en :(NSString *) ps;
@end
