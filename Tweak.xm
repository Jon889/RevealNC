
#import <SpringBoard/SBNotificationCenterController.h>

%hook SBNotificationCenterViewController
-(void)_setContainerFrame:(CGRect)arg1 {
	%orig;
	UIView *content = [self valueForKey:@"_contentView"];
	UIView *container = [self valueForKey:@"_containerView"];
	CGRect contentFrame = [content frame];
	CGRect containerFrame = [container frame];
	contentFrame.origin.y = -containerFrame.origin.y;
	[content setFrame:contentFrame];
}

- (CGRect)revealRectForBulletin:(id)bulletin {
	return CGRectMake(0,0,0,0);
}
%end