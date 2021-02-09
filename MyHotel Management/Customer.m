//
//  Customer.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Customer.h"

@implementation Customer : Person
@synthesize address, typeOfRoom, periodOfTime, cusId, pricePerNight, totalPrice, fname, lname, typeService, servicePrice;

-(void) setCustomerData :(NSString *) ad :(NSString *) tor :(int) pot :(int) cId :(float) ppn :(float)tp :(NSString *) ts :(float) sp
{
    address = ad;
    typeOfRoom = tor;
    periodOfTime = pot;
    cusId = cId;
    pricePerNight = ppn;
    totalPrice = tp;
    typeService = ts;
    servicePrice = sp;
}
-(void)printCustomerData
{
NSLog(@"Customer Data: Customer Id : %i \n First Name : %@ \n Last Name : %@ \n Home Address : %@ \n Room Type : %@ \n Night(s) For Reservation : %i " ,cusId , fname, lname, address, typeOfRoom, periodOfTime);
}
- (float) totalBills :(int)periodOfTime :(float)pricePerNight :(float)servicePrice
{
    return totalPrice = (periodOfTime * pricePerNight) + servicePrice;
}
@end
