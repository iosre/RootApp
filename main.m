int main(int argc, char **argv)
{
	setuid(0);

	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	int ret = UIApplicationMain(argc, argv, @"RootAppApplication", @"RootAppApplication");
	[p drain];
	return ret;
}
