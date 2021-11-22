// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   reCAPTCHA Enterprise API (recaptchaenterprise/v1)
// Documentation:
//   https://cloud.google.com/recaptcha-enterprise/

#import "GTLRRecaptchaEnterpriseQuery.h"

#import "GTLRRecaptchaEnterpriseObjects.h"

@implementation GTLRRecaptchaEnterpriseQuery

@dynamic fields;

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsAssessmentsAnnotate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:annotate";
  GTLRRecaptchaEnterpriseQuery_ProjectsAssessmentsAnnotate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse class];
  query.loggingName = @"recaptchaenterprise.projects.assessments.annotate";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsAssessmentsCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Assessment *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/assessments";
  GTLRRecaptchaEnterpriseQuery_ProjectsAssessmentsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Assessment class];
  query.loggingName = @"recaptchaenterprise.projects.assessments.create";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysCreate

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/keys";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key class];
  query.loggingName = @"recaptchaenterprise.projects.keys.create";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysDelete

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleProtobufEmpty class];
  query.loggingName = @"recaptchaenterprise.projects.keys.delete";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysGet

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key class];
  query.loggingName = @"recaptchaenterprise.projects.keys.get";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysGetMetrics

@dynamic name;

+ (instancetype)queryWithName:(NSString *)name {
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysGetMetrics *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Metrics class];
  query.loggingName = @"recaptchaenterprise.projects.keys.getMetrics";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/keys";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1ListKeysResponse class];
  query.loggingName = @"recaptchaenterprise.projects.keys.list";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysMigrate

@dynamic name;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}:migrate";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysMigrate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key class];
  query.loggingName = @"recaptchaenterprise.projects.keys.migrate";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsKeysPatch

@dynamic name, updateMask;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key *)object
                           name:(NSString *)name {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"name" ];
  NSString *pathURITemplate = @"v1/{+name}";
  GTLRRecaptchaEnterpriseQuery_ProjectsKeysPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.name = name;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1Key class];
  query.loggingName = @"recaptchaenterprise.projects.keys.patch";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupmembershipsSearch

@dynamic parent;

+ (instancetype)queryWithObject:(GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest *)object
                         parent:(NSString *)parent {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/relatedaccountgroupmemberships:search";
  GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupmembershipsSearch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse class];
  query.loggingName = @"recaptchaenterprise.projects.relatedaccountgroupmemberships.search";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/relatedaccountgroups";
  GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse class];
  query.loggingName = @"recaptchaenterprise.projects.relatedaccountgroups.list";
  return query;
}

@end

@implementation GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupsMembershipsList

@dynamic pageSize, pageToken, parent;

+ (instancetype)queryWithParent:(NSString *)parent {
  NSArray *pathParams = @[ @"parent" ];
  NSString *pathURITemplate = @"v1/{+parent}/memberships";
  GTLRRecaptchaEnterpriseQuery_ProjectsRelatedaccountgroupsMembershipsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.parent = parent;
  query.expectedObjectClass = [GTLRRecaptchaEnterprise_GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse class];
  query.loggingName = @"recaptchaenterprise.projects.relatedaccountgroups.memberships.list";
  return query;
}

@end
