// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Google Chat API (chat/v1)
// Description:
//   Enables apps to fetch information and perform actions in Google Chat.
//   Authentication using a service account is a prerequisite for using the
//   Google Chat REST API.
// Documentation:
//   https://developers.google.com/hangouts/chat

#import "GTLRHangoutsChat.h"

@implementation GTLRHangoutsChatService

- (instancetype)init {
  self = [super init];
  if (self) {
    // From discovery.
    self.rootURLString = @"https://chat.googleapis.com/";
    self.batchPath = @"batch";
    self.prettyPrintQueryParameterNames = @[ @"prettyPrint" ];
  }
  return self;
}

@end