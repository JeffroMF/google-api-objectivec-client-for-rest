// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Domains RDAP API (domainsrdap/v1)
// Description:
//   Read-only public API that lets users search for information about domain
//   names.
// Documentation:
//   https://developers.google.com/domains/rdap/

#import <GoogleAPIClientForREST/GTLRQuery.h>

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Domains RDAP query classes.
 */
@interface GTLRDomainsRDAPQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.autnum.get
 */
@interface GTLRDomainsRDAPQuery_AutnumGet : GTLRDomainsRDAPQuery

@property(nonatomic, copy, nullable) NSString *autnumId;

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @param autnumId NSString
 *
 *  @return GTLRDomainsRDAPQuery_AutnumGet
 */
+ (instancetype)queryWithAutnumId:(NSString *)autnumId;

@end

/**
 *  Look up RDAP information for a domain by name.
 *
 *  Method: domainsrdap.domain.get
 */
@interface GTLRDomainsRDAPQuery_DomainGet : GTLRDomainsRDAPQuery

/** Full domain name to look up. Example: "example.com" */
@property(nonatomic, copy, nullable) NSString *domainName;

/**
 *  Fetches a @c GTLRDomainsRDAP_HttpBody.
 *
 *  Look up RDAP information for a domain by name.
 *
 *  @param domainName Full domain name to look up. Example: "example.com"
 *
 *  @return GTLRDomainsRDAPQuery_DomainGet
 */
+ (instancetype)queryWithDomainName:(NSString *)domainName;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.entity.get
 */
@interface GTLRDomainsRDAPQuery_EntityGet : GTLRDomainsRDAPQuery

@property(nonatomic, copy, nullable) NSString *entityId;

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @param entityId NSString
 *
 *  @return GTLRDomainsRDAPQuery_EntityGet
 */
+ (instancetype)queryWithEntityId:(NSString *)entityId;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.ip.get
 */
@interface GTLRDomainsRDAPQuery_IpGet : GTLRDomainsRDAPQuery

@property(nonatomic, copy, nullable) NSString *ipId;

@property(nonatomic, copy, nullable) NSString *ipId1;

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @param ipId NSString
 *  @param ipId1 NSString
 *
 *  @return GTLRDomainsRDAPQuery_IpGet
 */
+ (instancetype)queryWithIpId:(NSString *)ipId
                        ipId1:(NSString *)ipId1;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.nameserver.get
 */
@interface GTLRDomainsRDAPQuery_NameserverGet : GTLRDomainsRDAPQuery

@property(nonatomic, copy, nullable) NSString *nameserverId;

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @param nameserverId NSString
 *
 *  @return GTLRDomainsRDAPQuery_NameserverGet
 */
+ (instancetype)queryWithNameserverId:(NSString *)nameserverId;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.getDomains
 */
@interface GTLRDomainsRDAPQuery_V1GetDomains : GTLRDomainsRDAPQuery

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @return GTLRDomainsRDAPQuery_V1GetDomains
 */
+ (instancetype)query;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.getEntities
 */
@interface GTLRDomainsRDAPQuery_V1GetEntities : GTLRDomainsRDAPQuery

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @return GTLRDomainsRDAPQuery_V1GetEntities
 */
+ (instancetype)query;

@end

/**
 *  Get help information for the RDAP API, including links to documentation.
 *
 *  Method: domainsrdap.getHelp
 */
@interface GTLRDomainsRDAPQuery_V1GetHelp : GTLRDomainsRDAPQuery

/**
 *  Fetches a @c GTLRDomainsRDAP_HttpBody.
 *
 *  Get help information for the RDAP API, including links to documentation.
 *
 *  @return GTLRDomainsRDAPQuery_V1GetHelp
 */
+ (instancetype)query;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.getIp
 */
@interface GTLRDomainsRDAPQuery_V1GetIp : GTLRDomainsRDAPQuery

/**
 *  Fetches a @c GTLRDomainsRDAP_HttpBody.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @return GTLRDomainsRDAPQuery_V1GetIp
 */
+ (instancetype)query;

@end

/**
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  Method: domainsrdap.getNameservers
 */
@interface GTLRDomainsRDAPQuery_V1GetNameservers : GTLRDomainsRDAPQuery

/**
 *  Fetches a @c GTLRDomainsRDAP_RdapResponse.
 *
 *  The RDAP API recognizes this command from the RDAP specification but does
 *  not support it. The response is a formatted 501 error.
 *
 *  @return GTLRDomainsRDAPQuery_V1GetNameservers
 */
+ (instancetype)query;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
