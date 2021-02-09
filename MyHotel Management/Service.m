//
//  Service.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 12/8/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Service.h"

@implementation Service
@synthesize serviceId, serviceType, duration, price;

- (NSString *)printServiceData
{
    return [NSString stringWithFormat: @"\nService Id = %@\nService Type = %@\nPrice = %lf\n Duration = %i", serviceId, serviceType, price, duration];
}

- (void) setServiceData:(NSString *)Serviceid :(NSString *)Servicetype :(double)Price :(int)Duration
{
    serviceId = Serviceid;
    serviceType = Servicetype;
    price = Price;
    duration = Duration;
}

@end
