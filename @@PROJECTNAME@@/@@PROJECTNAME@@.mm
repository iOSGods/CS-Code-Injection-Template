#import <Preferences/Preferences.h>

@interface @@PROJECTNAME@@ListController: PSListController {
}
@end

@implementation @@PROJECTNAME@@ListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"@@PROJECTNAME@@" target:self] retain];
	}
	return _specifiers;
}

/* The "Visit iOSGods.com" link inside the Preferences button */
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.iosgods.com"]];
} 
@end

// vim:ft=objc
