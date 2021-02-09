//
//  Reservation.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reservation.h"

@implementation Reservation
@synthesize cusid, resid, roomid, nofdate, serviceid, year, month, day;

- (NSString *)printReservationData
{
    return [NSString stringWithFormat: @"\nReserve Id = %@\nCustomer Id = %@\nService Id = %@\nRoom Id = %@\nReservation Duration = %i\nStarting Date = %i/%i/%i", resid, cusid, serviceid, roomid, nofdate, year, month, day];
}

- (void) setReservationData:(NSString *)Resid :(NSString *)Id :(NSString*)Sid :(NSString *)Rid :(int)Nod :(int)Year :(int)Month :(int) Day
{
    resid = Resid;
    cusid = Id;
    serviceid = Sid;
    roomid = Rid;
    nofdate = Nod;
    month = Month;
    day = Day;
    year = Year;
}

@end
