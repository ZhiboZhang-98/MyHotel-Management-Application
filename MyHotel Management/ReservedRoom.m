//
//  ReservedRoom.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReservedRoom.h"

@implementation ReservedRoom
@synthesize reservedid;


- (void) setReserveRoomData :(NSString *)Reservid
{
     reservedid = Reservid;
}
- (NSString *)printReservedRoomData
{
   return [NSString stringWithFormat: @"\nReserved room Id = %@", reservedid];
}

@end
