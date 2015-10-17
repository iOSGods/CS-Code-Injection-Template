#import "writeData.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <substrate.h>

#define PLIST_PATH @"/var/mobile/Library/Preferences/@@PACKAGENAME@@.plist"

inline bool GetPrefBool(NSString *key) {
		return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] boolValue];
}

%ctor {
if(GetPrefBool(@"key1")) {
writeData(0xOFFSET, 0xHEX);
} else {
}


if(GetPrefBool(@"key2")) {
writeData(0x10963C, 0xC0F8AC70);
} else {
}


if(GetPrefBool(@"key3")) {
writeData(0x10ACEA, 0xC0F8C871);
} else {
}


if(GetPrefBool(@"key4")) {
writeData(0x1806B8, 0x381C);
writeData(0x2FA51C, 0x381C);
writeData(0x1806B8, 0x7047);
writeData(0x1806B8, 0x7047);
} else {
}

}





/* Popup with a link 

Varieties of a UIAlertView Popup can be found here: http://iosgods.com/topic/13988-varieties-of-uialertview-types-to-use-in-your-tweaks-patchers/

*/


%hook AppDelegate // Change this with your Application's Delegate. AppController, UnityAppController, GameDelegate etc.

- (BOOL)application:(id)fp8 didFinishLaunchingWithOptions:(id)fp12 { // Popup only once at each launch of the app.
UIAlertView *igcredits = [[UIAlertView alloc] initWithTitle:@"@@PROJECTNAME@@ Cheats" 
                                                  message:@"\n@@PROJECTNAME@@ Cheats by @@USER@@ for iOSGods.com"
                                                 delegate:self 
										cancelButtonTitle:@"Thanks" 
										otherButtonTitles:@"Visit Us", nil]; 
[igcredits show];
[igcredits release]; 
%orig();
}
 
%new
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
 
NSString *button = [alertView buttonTitleAtIndex:buttonIndex];
 
	if([button isEqualToString:@"Visit Us"])
	{
		[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://iosgods.com/"]];                                                                                
	}
}
%end