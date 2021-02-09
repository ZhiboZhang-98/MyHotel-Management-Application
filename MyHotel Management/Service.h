//
//  Service.h
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#ifndef Service_h
#define Service_h


#endif /* Service_h */

@interface Service:NSObject
@property int duration;
@property float price;
@property NSString *serviceId, *serviceType;

-(NSString *)printServiceData;
- (void) setServiceData:(NSString *)Serviceid :(NSString *)Servicetype :(double)Price :(int)Duration;

@end
