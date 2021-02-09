//
//  Employee.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Employee.h"

@implementation Employee : Person
@synthesize employeeN, psw;

-(void) setEmployeeData :(NSString *) en :(NSString *) ps {
    employeeN = en;
    psw = ps;
}
@end
