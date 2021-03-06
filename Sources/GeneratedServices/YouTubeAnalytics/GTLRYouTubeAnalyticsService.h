// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   YouTube Analytics API (youtubeAnalytics/v2)
// Description:
//   Retrieves your YouTube Analytics data.
// Documentation:
//   https://developers.google.com/youtube/analytics

#import <GoogleAPIClientForREST/GTLRService.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Authorization scopes

/**
 *  Authorization scope: Manage your YouTube account
 *
 *  Value "https://www.googleapis.com/auth/youtube"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeYouTubeAnalyticsYoutube;
/**
 *  Authorization scope: View and manage your assets and associated content on
 *  YouTube
 *
 *  Value "https://www.googleapis.com/auth/youtubepartner"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeYouTubeAnalyticsYoutubepartner;
/**
 *  Authorization scope: View your YouTube account
 *
 *  Value "https://www.googleapis.com/auth/youtube.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeYouTubeAnalyticsYoutubeReadonly;
/**
 *  Authorization scope: View monetary and non-monetary YouTube Analytics
 *  reports for your YouTube content
 *
 *  Value "https://www.googleapis.com/auth/yt-analytics-monetary.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeYouTubeAnalyticsYtAnalyticsMonetaryReadonly;
/**
 *  Authorization scope: View YouTube Analytics reports for your YouTube content
 *
 *  Value "https://www.googleapis.com/auth/yt-analytics.readonly"
 */
FOUNDATION_EXTERN NSString * const kGTLRAuthScopeYouTubeAnalyticsYtAnalyticsReadonly;

// ----------------------------------------------------------------------------
//   GTLRYouTubeAnalyticsService
//

/**
 *  Service for executing YouTube Analytics API queries.
 *
 *  Retrieves your YouTube Analytics data.
 */
@interface GTLRYouTubeAnalyticsService : GTLRService

// No new methods

// Clients should create a standard query with any of the class methods in
// GTLRYouTubeAnalyticsQuery.h. The query can the be sent with GTLRService's
// execute methods,
//
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                     completionHandler:(void (^)(GTLRServiceTicket *ticket,
//                                                 id object, NSError *error))handler;
// or
//   - (GTLRServiceTicket *)executeQuery:(GTLRQuery *)query
//                              delegate:(id)delegate
//                     didFinishSelector:(SEL)finishedSelector;
//
// where finishedSelector has a signature of:
//
//   - (void)serviceTicket:(GTLRServiceTicket *)ticket
//      finishedWithObject:(id)object
//                   error:(NSError *)error;
//
// The object passed to the completion handler or delegate method
// is a subclass of GTLRObject, determined by the query method executed.

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
