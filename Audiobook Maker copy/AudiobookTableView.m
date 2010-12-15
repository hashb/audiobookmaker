#import "AudiobookTableView.h"

@implementation AudiobookTableView
-(void)drawRect:(NSRect)rect {
	[super drawRect:rect];
	
/*
Draw a message onto the NSTableView
The problem is that when a drag is entered, the message is drawn at the top also (at least on Mac OS X 10.4.3)
Because of this, I will not put the message in (until a workaround is found)

The app "Podcast Maker" seems to be able to get the desired effect...
*/

	/*
	if ([self numberOfRows]<1) {
		NSLog(@"No Rows");
		NSImage *dragReminderMessage = [[NSImage imageNamed:@"DragDropMP3"] autorelease];
		NSRect imageRect;
		imageRect.origin = NSZeroPoint;
		imageRect.size = [dragReminderMessage size];
		NSPoint stringOrigin;
		stringOrigin.x = rect.origin.x + (rect.size.width - 219)/2;
		stringOrigin.y = rect.origin.y + (rect.size.height - 24)/2;
		[dragReminderMessage drawAtPoint:stringOrigin fromRect:imageRect operation:NSCompositeSourceOver fraction:0.4];
	}
	*/
}

-(BOOL)isFlipped {
	return YES;
}
@end
