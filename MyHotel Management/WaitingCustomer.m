//
//  WaitingCustomer.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WaitingCustomer.h"

@implementation WaitingCustomer
@synthesize customerid;

-(void)setWaitingCustomerData:(NSString * )Customerid
{
    customerid = Customerid;
}
- (NSString *)printWaitingCustomerData
{
   return [NSString stringWithFormat: @"\nWaiting customer Id = %@", customerid];
}

@end
