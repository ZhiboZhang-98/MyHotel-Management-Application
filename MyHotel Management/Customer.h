//
//  Customer.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Customer_h
#define Customer_h


#endif /* Customer_h */

#import "Person.h"

@interface Customer : Person
@property int periodOfTime, cusId;
@property float pricePerNight, totalPrice, servicePrice;
@property NSString *address, *typeOfRoom, *typeService;

-(void) setCustomerData :(NSString *) ad :(NSString *) tor :(int) pot :(int) cId :(float) ppn :(float) tp :(NSString *) ts :(float) sp;
- (float) totalBills :(int)periodOfTime :(float)pricePerNight :(float)servicePrice;
-(void) printCustomerData;
@end
