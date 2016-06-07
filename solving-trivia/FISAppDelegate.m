//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
    
}

/*
 
 Write your method here
 
 
 
 
 */
-(NSString *)solveTrivia {
    NSDictionary *statesAndCapitals = @{ @"Alabama" :	@"Montgomery",
                                         @"Alaska" :	@"Juneau",
                                         @"Arizona" :	@"Phoenix",
                                         @"Arkansas" :	@"Little Rock",
                                         @"California" :	@"Sacramento",
                                         @"Colorado" :	@"Denver",
                                         @"Connecticut"	:@"Hartford",
                                         @"Delaware" :	@"Dover",
                                         @"Florida" :@"Tallahassee",
                                         @"Georgia" :	@"Atlanta",
                                         @"Hawaii" :	@"Honolulu",
                                         @"Idaho" :	@"Boise",
                                         @"Illinois" :	@"Springfield",
                                         @"Indiana" :	@"Indianapolis",
                                         @"Iowa" :	@"Des Moines",
                                         @"Kansas" :	@"Topeka",
                                         @"Kentucky" :	@"Frankfort",
                                         
                                         
                                         @"Louisiana":	@"Baton Rouge",
                                         @"Maine" :	@"Augusta",
                                         @"Maryland" :	@"Annapolis",
                                         @"Massachusetts" :	@"Boston",
                                         @"Michigan" :	@"Lansing",
                                         @"Minnesota" :	@"Saint Paul",
                                         @"Mississippi" :	@"Jackson",
                                         @"Missouri" :	@"Jefferson City",
                                         @"Montana" :	@"Helena",
                                         @"Nebraska" :	@"Lincoln",
                                         @"Nevada" :	@"Carson City",
                                         @"New Hampshire" : 	@"Concord",
                                         @"New Jersey" :	@"Trenton",
                                         @"New Mexico" :	@"Santa Fe",
                                         @"New York"	: @"Albany",
                                         @"North Carolina" :	@"Raleigh",
                                         @"North Dakota" :	@"Bismarck",
                                         
                                         
                                         @"Ohio" :	@"Columbus",
                                         @"Oklahoma" :	@"Oklahoma City",
                                         @"Oregon" :	@"Salem",
                                         @"Pennsylvania" :	@"Harrisburg",
                                         @"Rhode Island" :	@"Providence",
                                         @"South Carolina" :	@"Columbia",
                                         @"South Dakota" :	@"Pierre",
                                         @"Tennessee" :	@"Nashville",
                                         @"Texas" :	@"Austin",
                                         @"Utah" :	@"Salt Lake City",
                                         @"Vermont" :	@"Montpelier",
                                         @"Virginia" :	@"Richmond",
                                         @"Washington" : @"Olympia",
                                         @"West Virginia" :	@"Charleston",
                                         @"Wisconsin"	: @"Madison",
                                         @"Wyoming" :	@"Cheyenne"
                                         };
    
    NSMutableArray *duplicateWasFound = [[NSMutableArray alloc] init];
    NSString *solution = @"";
    for (NSString *key in statesAndCapitals) {
        NSString *capital = statesAndCapitals[key];
        NSString *lowercaseCapital = [capital lowercaseString];
        NSString *lowercaseState = [key lowercaseString];
        
        for (NSUInteger i = 0; i < [lowercaseCapital length]; i++)
        {
            if ([duplicateWasFound count] > 0)
            {
                [duplicateWasFound removeAllObjects];
                break;
            }
            unichar capitalLetter = [lowercaseCapital characterAtIndex:i];
            for (NSUInteger j = 0; j < [lowercaseState length]; j++)
            {
                unichar stateLetter = [lowercaseState characterAtIndex:j];
                if (capitalLetter == stateLetter)
                {
                    [duplicateWasFound addObject:lowercaseState];
                    break;
                }else if (i == [lowercaseCapital length] -1  &&
                          j == [lowercaseState length] - 1 &&
                          [duplicateWasFound count] == 0 )
                           {
                               solution = key;
                           }
            }
        }
        
    }
    
    return solution;
}









@end

