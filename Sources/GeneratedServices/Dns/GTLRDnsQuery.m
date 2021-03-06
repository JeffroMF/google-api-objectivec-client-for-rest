// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Cloud DNS API (dns/v2)
// Documentation:
//   https://cloud.google.com/dns/docs

#import "GTLRDnsQuery.h"

#import "GTLRDnsObjects.h"

// ----------------------------------------------------------------------------
// Constants

// sortBy
NSString * const kGTLRDnsSortByChangeSequence = @"CHANGE_SEQUENCE";
NSString * const kGTLRDnsSortById             = @"ID";
NSString * const kGTLRDnsSortByStartTime      = @"START_TIME";

// ----------------------------------------------------------------------------
// Query Classes
//

@implementation GTLRDnsQuery

@dynamic fields;

@end

@implementation GTLRDnsQuery_ChangesCreate

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_Change *)object
                        project:(NSString *)project
                       location:(NSString *)location
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/changes";
  GTLRDnsQuery_ChangesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Change class];
  query.loggingName = @"dns.changes.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ChangesGet

@dynamic changeId, clientOperationId, location, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone
                        changeId:(NSString *)changeId {
  NSArray *pathParams = @[
    @"changeId", @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/changes/{changeId}";
  GTLRDnsQuery_ChangesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.changeId = changeId;
  query.expectedObjectClass = [GTLRDns_Change class];
  query.loggingName = @"dns.changes.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ChangesList

@dynamic location, managedZone, maxResults, pageToken, project, sortBy,
         sortOrder;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/changes";
  GTLRDnsQuery_ChangesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ChangesListResponse class];
  query.loggingName = @"dns.changes.list";
  return query;
}

@end

@implementation GTLRDnsQuery_DnsKeysGet

@dynamic clientOperationId, digestType, dnsKeyId, location, managedZone,
         project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone
                        dnsKeyId:(NSString *)dnsKeyId {
  NSArray *pathParams = @[
    @"dnsKeyId", @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}";
  GTLRDnsQuery_DnsKeysGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.dnsKeyId = dnsKeyId;
  query.expectedObjectClass = [GTLRDns_DnsKey class];
  query.loggingName = @"dns.dnsKeys.get";
  return query;
}

@end

@implementation GTLRDnsQuery_DnsKeysList

@dynamic digestType, location, managedZone, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/dnsKeys";
  GTLRDnsQuery_DnsKeysList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_DnsKeysListResponse class];
  query.loggingName = @"dns.dnsKeys.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZoneOperationsGet

@dynamic clientOperationId, location, managedZone, operation, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone
                       operation:(NSString *)operation {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"operation", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/operations/{operation}";
  GTLRDnsQuery_ManagedZoneOperationsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.operation = operation;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZoneOperations.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZoneOperationsList

@dynamic location, managedZone, maxResults, pageToken, project, sortBy;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/operations";
  GTLRDnsQuery_ManagedZoneOperationsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ManagedZoneOperationsListResponse class];
  query.loggingName = @"dns.managedZoneOperations.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesCreate

@dynamic clientOperationId, location, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project
                       location:(NSString *)location {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones";
  GTLRDnsQuery_ManagedZonesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_ManagedZone class];
  query.loggingName = @"dns.managedZones.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesDelete

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.loggingName = @"dns.managedZones.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesGet

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ManagedZone class];
  query.loggingName = @"dns.managedZones.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesList

@dynamic dnsName, location, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location {
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones";
  GTLRDnsQuery_ManagedZonesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_ManagedZonesListResponse class];
  query.loggingName = @"dns.managedZones.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesPatch

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project
                       location:(NSString *)location
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZones.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_ManagedZonesUpdate

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ManagedZone *)object
                        project:(NSString *)project
                       location:(NSString *)location
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}";
  GTLRDnsQuery_ManagedZonesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_Operation class];
  query.loggingName = @"dns.managedZones.update";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesCreate

@dynamic clientOperationId, location, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project
                       location:(NSString *)location {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies";
  GTLRDnsQuery_PoliciesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_Policy class];
  query.loggingName = @"dns.policies.create";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesDelete

@dynamic clientOperationId, location, policy, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                          policy:(NSString *)policy {
  NSArray *pathParams = @[
    @"location", @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies/{policy}";
  GTLRDnsQuery_PoliciesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.policy = policy;
  query.loggingName = @"dns.policies.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesGet

@dynamic clientOperationId, location, policy, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                          policy:(NSString *)policy {
  NSArray *pathParams = @[
    @"location", @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies/{policy}";
  GTLRDnsQuery_PoliciesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_Policy class];
  query.loggingName = @"dns.policies.get";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesList

@dynamic location, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location {
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies";
  GTLRDnsQuery_PoliciesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_PoliciesListResponse class];
  query.loggingName = @"dns.policies.list";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesPatch

@dynamic clientOperationId, location, policy, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project
                       location:(NSString *)location
                         policy:(NSString *)policy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies/{policy}";
  GTLRDnsQuery_PoliciesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_PoliciesPatchResponse class];
  query.loggingName = @"dns.policies.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_PoliciesUpdate

@dynamic clientOperationId, location, policy, project;

+ (instancetype)queryWithObject:(GTLRDns_Policy *)object
                        project:(NSString *)project
                       location:(NSString *)location
                         policy:(NSString *)policy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"policy", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/policies/{policy}";
  GTLRDnsQuery_PoliciesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.policy = policy;
  query.expectedObjectClass = [GTLRDns_PoliciesUpdateResponse class];
  query.loggingName = @"dns.policies.update";
  return query;
}

@end

@implementation GTLRDnsQuery_ProjectsGet

@dynamic clientOperationId, location, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location {
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}";
  GTLRDnsQuery_ProjectsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_Project class];
  query.loggingName = @"dns.projects.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsCreate

@dynamic clientOperationId, location, managedZone, project;

+ (instancetype)queryWithObject:(GTLRDns_ResourceRecordSet *)object
                        project:(NSString *)project
                       location:(NSString *)location
                    managedZone:(NSString *)managedZone {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/rrsets";
  GTLRDnsQuery_ResourceRecordSetsCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsDelete

@dynamic clientOperationId, location, managedZone, name, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone
                            name:(NSString *)name
                            type:(NSString *)type {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.loggingName = @"dns.resourceRecordSets.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsGet

@dynamic clientOperationId, location, managedZone, name, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone
                            name:(NSString *)name
                            type:(NSString *)type {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsList

@dynamic location, managedZone, maxResults, name, pageToken, project, type;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                     managedZone:(NSString *)managedZone {
  NSArray *pathParams = @[
    @"location", @"managedZone", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/rrsets";
  GTLRDnsQuery_ResourceRecordSetsList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSetsListResponse class];
  query.loggingName = @"dns.resourceRecordSets.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ResourceRecordSetsPatch

@dynamic clientOperationId, location, managedZone, name, project, type;

+ (instancetype)queryWithObject:(GTLRDns_ResourceRecordSet *)object
                        project:(NSString *)project
                       location:(NSString *)location
                    managedZone:(NSString *)managedZone
                           name:(NSString *)name
                           type:(NSString *)type {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"managedZone", @"name", @"project", @"type"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/managedZones/{managedZone}/rrsets/{name}/{type}";
  GTLRDnsQuery_ResourceRecordSetsPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.managedZone = managedZone;
  query.name = name;
  query.type = type;
  query.expectedObjectClass = [GTLRDns_ResourceRecordSet class];
  query.loggingName = @"dns.resourceRecordSets.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesCreate

@dynamic clientOperationId, location, project;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicy *)object
                        project:(NSString *)project
                       location:(NSString *)location {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies";
  GTLRDnsQuery_ResponsePoliciesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_ResponsePolicy class];
  query.loggingName = @"dns.responsePolicies.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesDelete

@dynamic clientOperationId, location, project, responsePolicy;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                  responsePolicy:(NSString *)responsePolicy {
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}";
  GTLRDnsQuery_ResponsePoliciesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.loggingName = @"dns.responsePolicies.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesGet

@dynamic clientOperationId, location, project, responsePolicy;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                  responsePolicy:(NSString *)responsePolicy {
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}";
  GTLRDnsQuery_ResponsePoliciesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.expectedObjectClass = [GTLRDns_ResponsePolicy class];
  query.loggingName = @"dns.responsePolicies.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesList

@dynamic location, maxResults, pageToken, project;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location {
  NSArray *pathParams = @[
    @"location", @"project"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies";
  GTLRDnsQuery_ResponsePoliciesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.expectedObjectClass = [GTLRDns_ResponsePoliciesListResponse class];
  query.loggingName = @"dns.responsePolicies.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesPatch

@dynamic clientOperationId, location, project, responsePolicy;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicy *)object
                        project:(NSString *)project
                       location:(NSString *)location
                 responsePolicy:(NSString *)responsePolicy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}";
  GTLRDnsQuery_ResponsePoliciesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.expectedObjectClass = [GTLRDns_ResponsePoliciesPatchResponse class];
  query.loggingName = @"dns.responsePolicies.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePoliciesUpdate

@dynamic clientOperationId, location, project, responsePolicy;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicy *)object
                        project:(NSString *)project
                       location:(NSString *)location
                 responsePolicy:(NSString *)responsePolicy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}";
  GTLRDnsQuery_ResponsePoliciesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.expectedObjectClass = [GTLRDns_ResponsePoliciesUpdateResponse class];
  query.loggingName = @"dns.responsePolicies.update";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesCreate

@dynamic clientOperationId, location, project, responsePolicy;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicyRule *)object
                        project:(NSString *)project
                       location:(NSString *)location
                 responsePolicy:(NSString *)responsePolicy {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules";
  GTLRDnsQuery_ResponsePolicyRulesCreate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"POST"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.expectedObjectClass = [GTLRDns_ResponsePolicyRule class];
  query.loggingName = @"dns.responsePolicyRules.create";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesDelete

@dynamic clientOperationId, location, project, responsePolicy,
         responsePolicyRule;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                  responsePolicy:(NSString *)responsePolicy
              responsePolicyRule:(NSString *)responsePolicyRule {
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy", @"responsePolicyRule"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}";
  GTLRDnsQuery_ResponsePolicyRulesDelete *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"DELETE"
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.responsePolicyRule = responsePolicyRule;
  query.loggingName = @"dns.responsePolicyRules.delete";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesGet

@dynamic clientOperationId, location, project, responsePolicy,
         responsePolicyRule;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                  responsePolicy:(NSString *)responsePolicy
              responsePolicyRule:(NSString *)responsePolicyRule {
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy", @"responsePolicyRule"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}";
  GTLRDnsQuery_ResponsePolicyRulesGet *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.responsePolicyRule = responsePolicyRule;
  query.expectedObjectClass = [GTLRDns_ResponsePolicyRule class];
  query.loggingName = @"dns.responsePolicyRules.get";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesList

@dynamic location, maxResults, pageToken, project, responsePolicy;

+ (instancetype)queryWithProject:(NSString *)project
                        location:(NSString *)location
                  responsePolicy:(NSString *)responsePolicy {
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules";
  GTLRDnsQuery_ResponsePolicyRulesList *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:nil
                       pathParameterNames:pathParams];
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.expectedObjectClass = [GTLRDns_ResponsePolicyRulesListResponse class];
  query.loggingName = @"dns.responsePolicyRules.list";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesPatch

@dynamic clientOperationId, location, project, responsePolicy,
         responsePolicyRule;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicyRule *)object
                        project:(NSString *)project
                       location:(NSString *)location
                 responsePolicy:(NSString *)responsePolicy
             responsePolicyRule:(NSString *)responsePolicyRule {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy", @"responsePolicyRule"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}";
  GTLRDnsQuery_ResponsePolicyRulesPatch *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PATCH"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.responsePolicyRule = responsePolicyRule;
  query.expectedObjectClass = [GTLRDns_ResponsePolicyRulesPatchResponse class];
  query.loggingName = @"dns.responsePolicyRules.patch";
  return query;
}

@end

@implementation GTLRDnsQuery_ResponsePolicyRulesUpdate

@dynamic clientOperationId, location, project, responsePolicy,
         responsePolicyRule;

+ (instancetype)queryWithObject:(GTLRDns_ResponsePolicyRule *)object
                        project:(NSString *)project
                       location:(NSString *)location
                 responsePolicy:(NSString *)responsePolicy
             responsePolicyRule:(NSString *)responsePolicyRule {
  if (object == nil) {
#if defined(DEBUG) && DEBUG
    NSAssert(object != nil, @"Got a nil object");
#endif
    return nil;
  }
  NSArray *pathParams = @[
    @"location", @"project", @"responsePolicy", @"responsePolicyRule"
  ];
  NSString *pathURITemplate = @"dns/v2/projects/{project}/locations/{location}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}";
  GTLRDnsQuery_ResponsePolicyRulesUpdate *query =
    [[self alloc] initWithPathURITemplate:pathURITemplate
                               HTTPMethod:@"PUT"
                       pathParameterNames:pathParams];
  query.bodyObject = object;
  query.project = project;
  query.location = location;
  query.responsePolicy = responsePolicy;
  query.responsePolicyRule = responsePolicyRule;
  query.expectedObjectClass = [GTLRDns_ResponsePolicyRulesUpdateResponse class];
  query.loggingName = @"dns.responsePolicyRules.update";
  return query;
}

@end
