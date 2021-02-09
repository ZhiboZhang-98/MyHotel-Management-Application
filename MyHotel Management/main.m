//
//  main.m
//  MyHotel Management
//
//  Created by Zhibo Zhang on 10/27/19.
//  Copyright © 2019 Zhibo Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Customer.h"
#import "Employee.h"
#import "Room.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int loginOption, empOption, cusOption;
        Employee *e1 = [[Employee alloc] init];
        
        do {
            NSLog(@"                       :::::::::::::::::::::::::::::::::::::");
            NSLog(@"                       ::                                 ::");
            NSLog(@"                       ::     @@@@@@@@@@@@@@@@@@@@@@@     ::");
            NSLog(@"                       ::     @                     @     ::");
            NSLog(@"                       ::     @     WELCOME TO      @     ::");
            NSLog(@"                       ::     @                     @     ::");
            NSLog(@"                       ::     @ MyHotel  Management @     ::");
            NSLog(@"                       ::     @                     @     ::");
            NSLog(@"                       ::     @@@@@@@@@@@@@@@@@@@@@@@     ::");
            NSLog(@"                       ::                                 ::");
            NSLog(@"                       :::::::::::::::::::::::::::::::::::::\n\n");
            
            char ch;
            NSLog(@"Press any key to continue\n");
            scanf(" %c",&ch);
            
            NSLog(@"     MyHotel Login Screen");
            NSLog(@"-------------------------------");
            NSLog(@"1. Employee Login");
            NSLog(@"2. Customer Registration");
            NSLog(@"3. Quit Application");
            
            scanf("%i",&loginOption);
            
            switch(loginOption){
                case 1:
                {
                    NSString *strEId, *strPsw;
                    do {
                        NSLog(@"         Employee Login");
                        NSLog(@"-------------------------------------");
                        
                        char enteredEId[10];
                        char enteredPsw[10];
                        NSLog(@"Employee Id : ");
                        scanf("%s", enteredEId);
                        NSLog(@"Password : ");
                        scanf("%s", enteredPsw);
                        
                        
                        strEId = [NSString stringWithFormat:@"%s",enteredEId];
                        strPsw = [NSString stringWithFormat:@"%s",enteredPsw];
                        [e1 setEmployeeN:strEId];
                        [e1 setPsw:strPsw];
                        
                        NSLog(@" *** Login Successful ***");
                        
                    } while ([strEId isNotEqualTo:(@"admin")] || [strPsw isNotEqualTo:(@"admin")]);
                    
                    Room *room1 = [[Room alloc] init];
                    [room1 setRoomId:1000];
                    [room1 setRoomType:@"Single"];
                    [room1 setAvailability:@"Unreserved"];
                    
                    Room *room2 = [[Room alloc] init];
                    [room2 setRoomId:1001];
                    [room2 setRoomType:@"Double"];
                    [room2 setAvailability:@"Unreserved"];
                    
                    Room *room3 = [[Room alloc] init];
                    [room3 setRoomId:1002];
                    [room3 setRoomType:@"Triple"];
                    [room3 setAvailability:@"Unreserved"];
                    
                    Room *room4 = [[Room alloc] init];
                    [room4 setRoomId:1003];
                    [room4 setRoomType:@"Quad"];
                    [room4 setAvailability:@"Unreserved"];
                    
                    Room *room5 = [[Room alloc] init];
                    [room5 setRoomId:1004];
                    [room5 setRoomType:@"Queen"];
                    [room5 setAvailability:@"Unreserved"];
                    
                    Room *room6 = [[Room alloc] init];
                    [room6 setRoomId:1005];
                    [room6 setRoomType:@"King"];
                    [room6 setAvailability:@"Unreserved"];
                    
                    Room *room7 = [[Room alloc] init];
                    [room7 setRoomId:1006];
                    [room7 setRoomType:@"Double-double"];
                    [room7 setAvailability:@"Unreserved"];
                    
                    Room *room8 = [[Room alloc] init];
                    [room8 setRoomId:1007];
                    [room8 setRoomType:@"Studio"];
                    [room8 setAvailability:@"Unreserved"];
                    
                    Room *room9 = [[Room alloc] init];
                    [room9 setRoomId:1008];
                    [room9 setRoomType:@"Master Suite"];
                    [room9 setAvailability:@"Unreserved"];
                    
                    
                    
                    NSMutableArray *rooms = [NSMutableArray arrayWithCapacity:9];
                    [rooms addObject:room1];
                    [rooms addObject:room2];
                    [rooms addObject:room3];
                    [rooms addObject:room4];
                    [rooms addObject:room5];
                    [rooms addObject:room6];
                    [rooms addObject:room7];
                    [rooms addObject:room8];
                    [rooms addObject:room9];

/*
                    [rooms addObject:@"1000 Single"];
                    [rooms addObject:@"1001 Double"];
                    [rooms addObject:@"1002 Triple"];
                    [rooms addObject:@"1003 Quad"];
                    [rooms addObject:@"1004 Queen"];
                    [rooms addObject:@"1005 King"];
                    [rooms addObject:@"1006 Double-double"];
                    [rooms addObject:@"1007 Studio"];
                    [rooms addObject:@"1008 Master Suite"];
                    [rooms addObject:room1];
 */
                    
                    Customer *c1 = [[Customer alloc] init];
                    [c1 setCusId:100];
                    [c1 setFname:@"Sam"];
                    [c1 setLname:@"Branch"];
                    [c1 setAddress:@"521SaulSt"];
                    [c1 setTypeOfRoom:@"Single"];
                    [c1 setPeriodOfTime:3];
                    [c1 setPricePerNight:321.96];
                    [c1 setTypeService:@"Spa"];
                    [c1 setServicePrice:100];
                    [c1 totalBills:3 :321.96 :100];
                    
                    Customer *c2 = [[Customer alloc] init];
                    [c2 setCusId:101];
                    [c2 setFname:@"Smith"];
                    [c2 setLname:@"Tommy"];
                    [c2 setAddress:@"612KingSt"];
                    [c2 setTypeOfRoom:@"Double"];
                    [c2 setPeriodOfTime:2];
                    [c2 setPricePerNight:450.84];
                    [c2 setTypeService:@"Bar"];
                    [c2 setServicePrice:200];
                    [c2 totalBills:2 :450.84 :200];
                    
                    Customer *c3 = [[Customer alloc] init];
                    [c3 setCusId:102];
                    [c3 setFname:@"Terry"];
                    [c3 setLname:@"David"];
                    [c3 setAddress:@"883QueenSt"];
                    [c3 setTypeOfRoom:@"Triple"];
                    [c3 setPeriodOfTime:5];
                    [c3 setPricePerNight:430.49];
                    [c3 setTypeService:@"SwimmingPool"];
                    [c3 setServicePrice:60];
                    [c3 totalBills:5 :430.49 :60];
                    
                    NSArray *custs = [NSArray arrayWithObjects:c1, c2, c3, nil];
                    
                    NSMutableArray *custsWaitList = [NSMutableArray arrayWithCapacity:5];
                    
                    Customer *wc1 = [[Customer alloc] init];
                    [wc1 setCusId:1];
                    [wc1 setFname:@"Zhibo"];
                    [wc1 setLname:@"Zhang"];
                    [wc1 setAddress:@"632ClerkSt"];
                    [wc1 setTypeOfRoom:@"Single"];
                    [wc1 setPeriodOfTime:5];
                    [wc1 setTypeService:@"KTV"];
                    
                    [custsWaitList addObject:wc1];
                    
                    do{
                        NSLog(@"       Hotel Management");
                        NSLog(@"-------------------------------");
                        NSLog(@"1. Search A Room By ID");
                        NSLog(@"2. Display All Unreserved Room(s)");
                        NSLog(@"3. Display All Rooms");
                        NSLog(@"4. Reserve A Room");
                        NSLog(@"5. Release A Room");
                        NSLog(@"6. List All Customer(s)");
                        NSLog(@"7. Check Customer Waiting List");
                        NSLog(@"8. Back To Login Menu");
                        
                        NSLog(@"-------------------------------");
                        NSLog(@"Please Enter Your Choice: ");
                        scanf("%i",&empOption);
                    
                        
                        
                        switch(empOption) {
                            case 1 :
                            {
                                Room *searchResult = [[Room alloc] init];
                                
                                int enteredRoomNum;
                                
                                NSLog(@"Enter the Room Number: ");
                                scanf("%i",&enteredRoomNum);
                                
                                for (int i = 0; i < [rooms count]; i++)
                                {
                                    searchResult = [rooms objectAtIndex:i];
                                    
                                    if (searchResult.roomId == enteredRoomNum)
                                    {
                                        NSLog(@"Room ID \t\t\tRoom Type \t\t\t\t\tAvailability");
                                        NSLog(@"%i \t\t\t%@ \t\t\t\t\t%@", searchResult.roomId, searchResult.roomType, searchResult.availability);
                                    }
                                    /*else
                                    {
                                        NSLog(@"Room Not Found");
                                    }*/
                                }
                                
                                
                            }
                                break;
                            case 2 :
                            {
                                Room *searchResult = [[Room alloc] init];
                                
                                NSLog(@"Room ID \t\t\tRoom Type \t\t\t\t\tAvailability");
                                
                                for (int i = 0; i < [rooms count]; i++)
                                {
                                    searchResult = [rooms objectAtIndex:i];
                                    
                                    if ([searchResult.availability isEqualTo:(@"Unreserved")])
                                    {
                                        NSLog(@"%i \t\t\t%@ \t\t\t\t\t%@", searchResult.roomId, searchResult.roomType, searchResult.availability);
                                    }
                                }
                            }
                                break;
                            case 3 :
                            {
                                //NSLog(@"%@", rooms);
                                
                                Room *tempRoom = [[Room alloc] init];
                                
                                NSLog(@"Room ID \t\t\tRoom Type \t\t\t\t\tAvailability");
                                
                                for (int i = 0; i < [rooms count]; i++)
                                {
                                    tempRoom = [rooms objectAtIndex:i];
                                    
                                    NSLog(@"%i \t\t\t%@ \t\t\t\t\t%@", tempRoom.roomId, tempRoom.roomType, tempRoom.availability);
                                    NSLog(@"---------------------------------------------------------------");
                                }
                            }
                                break;
                            case 4 :
                            {
                                Room *searchResult = [[Room alloc] init];
                                
                                int enteredRoomNum;
                                
                                NSLog(@"Enter the Room Number: ");
                                scanf("%i",&enteredRoomNum);
                                
                                for (int i = 0; i < [rooms count]; i++)
                                {
                                    searchResult = [rooms objectAtIndex:i];
                                    
                                    if (searchResult.roomId == enteredRoomNum)
                                    {
                                        searchResult.availability = @"Reserved";
                                        NSLog(@"Room ID \t\t\tRoom Type \t\t\t\t\tAvailability");
                                        NSLog(@"%i \t\t\t%@ \t\t\t\t\t%@", searchResult.roomId, searchResult.roomType, searchResult.availability);
                                        NSLog(@" *** Reserve Room %i Successfully ***", enteredRoomNum);
                                    }
                                }
                            }
                                break;
                            case 5 :
                            {
                                Room *searchResult = [[Room alloc] init];
                                
                                int enteredRoomNum;
                                
                                NSLog(@"Enter the Room Number: ");
                                scanf("%i",&enteredRoomNum);
                                
                                for (int i = 0; i < [rooms count]; i++)
                                {
                                    searchResult = [rooms objectAtIndex:i];
                                    
                                    if (searchResult.roomId == enteredRoomNum)
                                    {
                                        searchResult.availability = @"Unreserved";
                                        NSLog(@"Room ID \t\t\tRoom Type \t\t\t\t\tAvailability");
                                        NSLog(@"%i \t\t\t%@ \t\t\t\t\t%@", searchResult.roomId, searchResult.roomType, searchResult.availability);
                                        NSLog(@" *** Release Room %i Successfully ***", enteredRoomNum);
                                    }
                                }
                            }
                                break;
                            case 6 :
                            {
                                Customer *tempCust = [[Customer alloc] init];
                                
                                NSLog(@"\t\t\t\t\t\t\t*** Customer List***");
                                NSLog(@"Customer ID \t\t\tFirst Name \t\t\tLast Name \t\t\tHome Address \t\t\tType Of Room \t\t\t Night(s) Spend \t\t\t Service Chosen");
                                
                                for (int i = 0; i < [custs count]; i++)
                                {
                                    tempCust = [custs objectAtIndex:i];
                                    
                                    NSLog(@"%i \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%i \t\t\t\t\t%@", tempCust.cusId, tempCust.fname, tempCust.lname, tempCust.address, tempCust.typeOfRoom, tempCust.periodOfTime, tempCust.typeService);
                                    NSLog(@"---------------------------------------------------------------------------------------------------------------------------------------------------");
                                }
                            }
                                break;
                            case 7 :
                            {
                                Customer *tempCust = [[Customer alloc] init];
                                
                                NSLog(@"Customer ID \t\t\tFirst Name \t\t\tLast Name \t\t\tHome Address \t\t\tType Of Room \t\t\t Night(s) Spend \t\t\t Service Chosen");
                                
                                for (int i = 0; i < [custsWaitList count]; i++)
                                {
                                    tempCust = [custsWaitList objectAtIndex:i];
                                    
                                    NSLog(@"%i \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%i \t\t\t\t\t%@", tempCust.cusId, tempCust.fname, tempCust.lname, tempCust.address, tempCust.typeOfRoom, tempCust.periodOfTime, tempCust.typeService);
                                    NSLog(@"---------------------------------------------------------------------------------------------------------------------------------------------------");
                                }
                            }
                                break;
                            case 8 :
                            {
                                NSLog(@"You decide to quit.");
                            }
                                break;
                            default : { NSLog(@"Enter 1, 2, 3, 4, 5, 6, 7 OR 8 to quit."); }
                                break;
                        }
                    }while (empOption != 8);
                }
                    break;
                case 2:
                {
                    char fn[15], ln[15], ha[50], tr[30], ts[40];
                    int enteredNbN, slot;
                    NSMutableArray *custsWaitList = [NSMutableArray arrayWithCapacity:6];
                    
                    Customer *wc1 = [[Customer alloc] init];
                    [wc1 setCusId:1];
                    [wc1 setFname:@"Zhibo"];
                    [wc1 setLname:@"Zhang"];
                    [wc1 setAddress:@"632ClerkSt"];
                    [wc1 setTypeOfRoom:@"Single"];
                    [wc1 setPeriodOfTime:5];
                    [wc1 setTypeService:@"KTV"];
                    
                    [custsWaitList addObject:wc1];
                    
                    Customer *c1 = [[Customer alloc] init];
                    [c1 setCusId:100];
                    [c1 setFname:@"Sam"];
                    [c1 setLname:@"Branch"];
                    [c1 setAddress:@"521SaulSt"];
                    [c1 setTypeOfRoom:@"Single"];
                    [c1 setPeriodOfTime:3];
                    [c1 setPricePerNight:321.96];
                    [c1 setTypeService:@"Spa"];
                    [c1 setServicePrice:100];
                    [c1 totalBills:3 :321.96 :100];
                    
                    Customer *c2 = [[Customer alloc] init];
                    [c2 setCusId:101];
                    [c2 setFname:@"Smith"];
                    [c2 setLname:@"Tommy"];
                    [c2 setAddress:@"612KingSt"];
                    [c2 setTypeOfRoom:@"Double"];
                    [c2 setPeriodOfTime:2];
                    [c2 setPricePerNight:450.84];
                    [c2 setTypeService:@"Bar"];
                    [c2 setServicePrice:200];
                    [c2 totalBills:2 :450.84 :200];
                    
                    Customer *c3 = [[Customer alloc] init];
                    [c3 setCusId:102];
                    [c3 setFname:@"Terry"];
                    [c3 setLname:@"David"];
                    [c3 setAddress:@"883QueenSt"];
                    [c3 setTypeOfRoom:@"Triple"];
                    [c3 setPeriodOfTime:5];
                    [c3 setPricePerNight:430.49];
                    [c3 setTypeService:@"SwimmingPool"];
                    [c3 setServicePrice:60];
                    [c3 totalBills:5 :430.49 :60];
                    
                    NSArray *custs = [NSArray arrayWithObjects:c1, c2, c3, nil];
                    
                    do {
                        NSLog(@"       Hotel Registration");
                        NSLog(@"---------------------------------");
                        NSLog(@"1. Register As A New Customer");
                        NSLog(@"2. Display The Waiting List");
                        NSLog(@"3. Pay the Bill");
                        NSLog(@"4. Back To Login Menu");
                        
                        NSLog(@"---------------------------------");
                        NSLog(@"Please Enter Your Choice: ");
                        scanf("%i",&cusOption);
                        
                        switch(cusOption) {
                            case 1 :
                            {
                                
                                NSLog(@"Enter Your First Name:");
                                scanf("%s",fn);
                                NSString *inputFName = [NSString stringWithFormat:@"%s",fn];
                                    
                                NSLog(@"Enter Your Last Name:");
                                scanf("%s",ln);
                                NSString *inputLName = [NSString stringWithFormat:@"%s",ln];
                                    
                                NSLog(@"Enter Your Home Address:");
                                scanf("%s",ha);
                                NSString *inputHomeAdd = [NSString stringWithFormat:@"%s",ha];
                                    
                                NSLog(@"Select The Type Of Room You Prefer: \n [ Single, Double, Triple, Quad, Queen, King, Double-double, Studio, Master Suite ]");
                                scanf("%s",tr);
                                NSString *inputTypeOfRoom = [NSString stringWithFormat:@"%s",tr];
                                    
                                NSLog(@"Enter the number of Night(s) You Will Stay:");
                                scanf("%i",&enteredNbN);
                                
                                NSLog(@"Select the Type of Service(s) You Would Like to Include: \n [ None, Bar, KTV, Spa, Gym, SwimmingPool ]");
                                scanf("%s",ts);
                                NSString *inputServiceType = [NSString stringWithFormat:@"%s",ts];
                                
                                NSLog(@"\n [Slot 1]\n [Slot 2]\n [Slot 3]\n [Slot 4]\n [Slot 5]\n Select the Slot That You Want to Save in:");
                                scanf("%i",&slot);
                                    
                                switch (slot)
                                {
                                    case 1:
                                    {
                                        Customer *cust1 = [[Customer alloc] init];
                                        [cust1 setCusId:2];
                                        [cust1 setFname:inputFName];
                                        [cust1 setLname:inputLName];
                                        [cust1 setAddress:inputHomeAdd];
                                        [cust1 setTypeOfRoom:inputTypeOfRoom];
                                        [cust1 setPeriodOfTime:enteredNbN];
                                        [cust1 setTypeService:inputServiceType];
                                        
                                        [custsWaitList addObject:cust1];
                                        
                                        NSLog(@"\n Dear Customer %@ %@, Your Registration Successfully Complete !!!\n You are in the 2ND Of The Customer Waiting List.\n Hope To See You Soon !!!", inputFName, inputLName);
                                    }
                                        break;
                                        
                                    case 2:
                                    {
                                        Customer *cust2 = [[Customer alloc] init];
                                        [cust2 setCusId:3];
                                        [cust2 setFname:inputFName];
                                        [cust2 setLname:inputLName];
                                        [cust2 setAddress:inputHomeAdd];
                                        [cust2 setTypeOfRoom:inputTypeOfRoom];
                                        [cust2 setPeriodOfTime:enteredNbN];
                                        [cust2 setTypeService:inputServiceType];
                                        
                                        [custsWaitList addObject:cust2];
                                        
                                        NSLog(@"\n Dear Customer %@ %@, Your Registration Successfully Complete !!!\n You are in the 3RD Of The Customer Waiting List.\n Hope To See You Soon !!!", inputFName, inputLName);
                                    }
                                        break;
                                        
                                    case 3:
                                    {
                                        Customer *cust3 = [[Customer alloc] init];
                                        [cust3 setCusId:4];
                                        [cust3 setFname:inputFName];
                                        [cust3 setLname:inputLName];
                                        [cust3 setAddress:inputHomeAdd];
                                        [cust3 setTypeOfRoom:inputTypeOfRoom];
                                        [cust3 setPeriodOfTime:enteredNbN];
                                        [cust3 setTypeService:inputServiceType];
                                        
                                        [custsWaitList addObject:cust3];
                                        
                                        NSLog(@"\n Dear Customer %@ %@, Your Registration Successfully Complete !!!\n You are in the 4TH Of The Customer Waiting List.\n Hope To See You Soon !!!", inputFName, inputLName);
                                    }
                                        break;
                                        
                                    case 4:
                                    {
                                        Customer *cust4 = [[Customer alloc] init];
                                        [cust4 setCusId:5];
                                        [cust4 setFname:inputFName];
                                        [cust4 setLname:inputLName];
                                        [cust4 setAddress:inputHomeAdd];
                                        [cust4 setTypeOfRoom:inputTypeOfRoom];
                                        [cust4 setPeriodOfTime:enteredNbN];
                                        [cust4 setTypeService:inputServiceType];
                                        
                                        [custsWaitList addObject:cust4];
                                        
                                        NSLog(@"\n Dear Customer %@ %@, Your Registration Successfully Complete !!!\n You are in the 5TH Of The Customer Waiting List.\n Hope To See You Soon !!!", inputFName, inputLName);
                                    }
                                        break;
                                        
                                    case 5:
                                    {
                                        Customer *cust5 = [[Customer alloc] init];
                                        [cust5 setCusId:5];
                                        [cust5 setFname:inputFName];
                                        [cust5 setLname:inputLName];
                                        [cust5 setAddress:inputHomeAdd];
                                        [cust5 setTypeOfRoom:inputTypeOfRoom];
                                        [cust5 setPeriodOfTime:enteredNbN];
                                        [cust5 setTypeService:inputServiceType];
                                        
                                        [custsWaitList addObject:cust5];
                                        
                                        NSLog(@"\n Dear Customer %@ %@, Your Registration Successfully Complete !!!\n You are in the 6TH Of The Customer Waiting List.\n Hope To See You Soon !!!", inputFName, inputLName);
                                    }
                                        break;
                                            
                                    default:
                                        break;
                                }
                                
                            }
                                break;
                            case 2 :
                            {
                                Customer *tempCust = [[Customer alloc] init];
                                
                                NSLog(@"Customer ID \t\t\tFirst Name \t\t\tLast Name \t\t\tHome Address \t\t\tType Of Room \t\t\t Night(s) Spend \t\t\t Service Chosen");
                                
                                for (int i = 0; i < [custsWaitList count]; i++)
                                {
                                    tempCust = [custsWaitList objectAtIndex:i];
                                    
                                    NSLog(@"%i \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%@ \t\t\t\t\t%i \t\t\t\t\t%@", tempCust.cusId, tempCust.fname, tempCust.lname, tempCust.address, tempCust.typeOfRoom, tempCust.periodOfTime, tempCust.typeService);
                                    NSLog(@"---------------------------------------------------------------------------------------------------------------------------------------------------");
                                }
                            }
                                break;
                            case 3 :
                            {
                                Customer *searchResult = [[Customer alloc] init];
                                
                                int enteredCusNum;
                                
                                NSLog(@"Please Enter Your Customer ID: ");
                                scanf("%i",&enteredCusNum);
                                
                                for (int i = 0; i < [custs count]; i++)
                                {
                                    searchResult = [custs objectAtIndex:i];
                                    
                                    if (searchResult.cusId == enteredCusNum)
                                    {
                                        NSLog(@"\nHello %@ %@ !\n\t\t\t\t *** Your Invoice ***\n\t%@\t\t\t\t\t$%f\n\t%@\t\t\t\t\t$%f\n\tNight(s) Spend: %i\n\t\t\t\t\t\t\tTotal Price: $%f", searchResult.fname, searchResult.lname, searchResult.typeOfRoom, searchResult.pricePerNight, searchResult.typeService, searchResult.servicePrice, searchResult.periodOfTime, searchResult.totalPrice);
                                    }
                                }
                                
                                int paymentChoice;
                                
                                NSLog(@"Please Choose a Payment Method:\n 1. [VISA]\n 2. [DEBIT]\n 3. [CASH]");
                                scanf("%i",&paymentChoice);
                                
                                if (paymentChoice == 1)
                                {
                                    NSLog(@"Your VISA Has Been Charged Successfully !!!\n Bye ~");
                                }
                                else if (paymentChoice == 2)
                                {
                                    NSLog(@"Your DEBIT Has Been Charged Successfully !!!\n Bye ~");
                                }
                                else if (paymentChoice == 3)
                                {
                                    NSLog(@"Payment Complete !!!\n Bye ~");
                                }
                            }
                                break;
                            case 4 :
                            {
                                NSLog(@"You decide to quit.");
                            }
                                break;
                            default : { NSLog(@"Enter 1, 2, 3 OR 4 to quit."); }
                                break;
                        }
                    } while (cusOption != 4);
                }
                    break;
                case 3:
                {
                    exit(0);
                }
                    break;
                default: NSLog(@"Please Choose between 1-3 !");
                    break;
            }
        } while (loginOption != 3);
    }
    return 0;
}
