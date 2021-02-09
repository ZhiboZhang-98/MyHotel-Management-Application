//
//  Reservation.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Reservation_h
#define Reservation_h


#endif /* Reservation_h */

@interface Reservation:NSObject
@property NSString *resid, *cusid, *roomid, *serviceid;
@property int nofdate, year, month, day;

- (NSString *)printReservationData;
- (void) setReservationData:(NSString *)Resid :(NSString *)Id :(NSString*)Sid :(NSString *)Rid :(int)Nod :(int)Year :(int)Month :(int) Day;

@end
