#import "DOAppDelegate.h"

@implementation DOAppDelegate

- (void) openIndexPageOfDocumentationSetAtPath:(NSString *)path {
	NSBundle *bundle = [NSBundle bundleWithPath:path];
	NSString *documentsDirectory = [bundle pathForResource:@"Documents" ofType:@""];
	NSString *navigationDirectory = [documentsDirectory stringByAppendingPathComponent:@"navigation"];
	NSString *indexFilePath = [navigationDirectory stringByAppendingPathComponent:@"index.html"];
	[[NSWorkspace sharedWorkspace] openFile:indexFilePath];
}

- (void) application:(NSApplication *)sender openFiles:(NSArray *)filenames {
	NSLog(@"%@", filenames);
	for (NSString *path in filenames) {
		[self openIndexPageOfDocumentationSetAtPath:path];
	}
}

@end
