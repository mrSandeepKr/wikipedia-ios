#import "WMFArticlePreview+WMFDatabaseStorable.h"

@implementation WMFArticlePreview (WMFDatabaseStorable)

+ (NSString *)databaseKeyForURL:(NSURL *)url {
    NSParameterAssert(url);
    return [[NSURL wmf_desktopURLForURL:url] absoluteString];
}

- (NSString *)databaseKey {
    return [[self class] databaseKeyForURL:self.url];
}

+ (NSString *)databaseCollectionName {
    return @"WMFArticlePreview";
}

@end
