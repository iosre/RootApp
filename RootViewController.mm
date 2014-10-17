#import "RootViewController.h"
#include <unistd.h>

@implementation RootViewController
- (void)reboot
{
	NSLog(@"iOSREDebug: %d, %d, %d", getuid(), geteuid(), system("reboot"));
}

- (void)loadView
{
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor redColor];

	UIButton *rebootButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	rebootButton.frame = CGRectMake(0.0f, 0.0f, 60.0f, 60.0f);
	rebootButton.center = self.view.center;
	rebootButton.backgroundColor = [UIColor yellowColor];
	[rebootButton addTarget:self action:@selector(reboot) forControlEvents:UIControlEventTouchDown];
	[self.view addSubview:rebootButton];
}
@end
