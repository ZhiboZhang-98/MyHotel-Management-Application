//
//  Room.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Room.h"

@implementation Room
@synthesize roomId, roomType, availability;

-(void) setRoomData :(int) rId :(NSString *) rt :(NSString *) av
{
    roomId = rId;
    roomType = rt;
    availability = av;
}

-(void)printRoomData{
NSLog(@"\n Room Information: \n Room Id : %i \n Room Type: %@ \n Availability : %@ " , roomId , roomType, availability);
}

@end
