#include "LFKRootListController.h"
#import "spawn.h"

@implementation LFKRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}


-(void)openRepo{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://github.com/usrnamewastaken/locationfaker/"]
	options:@{}
	completionHandler:nil];
}

-(void)openTwitter{
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"https://twitter.com/usrname15"]
	options:@{}
	completionHandler:nil];
}



@end

