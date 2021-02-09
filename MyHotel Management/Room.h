//
//  Room.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/28/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Room_h
#define Room_h


#endif /* Room_h */

@interface Room : NSObject
@property int roomId;
@property NSString *roomType, *availability;

-(void) setRoomData :(int) rId :(NSString *) rt :(NSString *) av;
-(void)printRoomData;
@end
