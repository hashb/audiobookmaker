#import "TrueCenterTextFieldCell.h"

@implementation TrueCenterTextFieldCell
- (void)drawInteriorWithFrame:(NSRect)frame inView:(NSView *) controlView {
	NSRect textFrame = [self textRectForFrame:frame];
	[self setEditable:YES];
	[super drawInteriorWithFrame:textFrame inView:controlView];
}

- (void)editWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject event:(NSEvent *)theEvent {
	NSLog(@"Start Edit!!!");
    NSRect textFrame = [self textRectForFrame:aRect];
	[super editWithFrame:textFrame inView:controlView editor:textObj delegate:anObject event: theEvent];
}

- (void)selectWithFrame:(NSRect)aRect inView:(NSView *)controlView editor:(NSText *)textObj delegate:(id)anObject start:(int)selStart length:(int)selLength {
    NSRect textFrame = [self textRectForFrame:aRect];
	[super selectWithFrame: textFrame inView: controlView editor:textObj delegate:anObject start:selStart length:selLength];
}

/*- (void)textDidEndEditing:(NSNotification *)aNotification {
	NSLog(@"Yo");
}*/

-(id)alloc {
	NSLog(@"Alloc!!!");
	return self;
}

- (NSRect)textRectForFrame:(NSRect)frame {
    frame.origin.x += 0;
    frame.origin.y += 6;
    frame.size.width -= 6;
    frame.size.height = 16;
    return frame;
}

- (BOOL)textShouldBeginEditing:(NSText *)textObj {
	return YES;
}

- (BOOL)textShouldEndEditing:(NSText *)textObj {
	return YES;
}
@end
