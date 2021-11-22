// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Secret Manager API (secretmanager/v1)
// Description:
//   Stores sensitive data such as API keys, passwords, and certificates.
//   Provides convenience while improving security.
// Documentation:
//   https://cloud.google.com/secret-manager/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRQuery.h"
#else
  #import "GTLRQuery.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRSecretManager_AddSecretVersionRequest;
@class GTLRSecretManager_DestroySecretVersionRequest;
@class GTLRSecretManager_DisableSecretVersionRequest;
@class GTLRSecretManager_EnableSecretVersionRequest;
@class GTLRSecretManager_Secret;
@class GTLRSecretManager_SetIamPolicyRequest;
@class GTLRSecretManager_TestIamPermissionsRequest;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

/**
 *  Parent class for other Secret Manager query classes.
 */
@interface GTLRSecretManagerQuery : GTLRQuery

/** Selector specifying which fields to include in a partial response. */
@property(nonatomic, copy, nullable) NSString *fields;

@end

/**
 *  Gets information about a location.
 *
 *  Method: secretmanager.projects.locations.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsLocationsGet : GTLRSecretManagerQuery

/** Resource name for the location. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_Location.
 *
 *  Gets information about a location.
 *
 *  @param name Resource name for the location.
 *
 *  @return GTLRSecretManagerQuery_ProjectsLocationsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists information about the supported locations for this service.
 *
 *  Method: secretmanager.projects.locations.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsLocationsList : GTLRSecretManagerQuery

/**
 *  A filter to narrow down results to a preferred subset. The filtering
 *  language accepts strings like "displayName=tokyo", and is documented in more
 *  detail in [AIP-160](https://google.aip.dev/160).
 */
@property(nonatomic, copy, nullable) NSString *filter;

/** The resource that owns the locations collection, if applicable. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The maximum number of results to return. If not set, the service selects a
 *  default.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  A page token received from the `next_page_token` field in the response. Send
 *  that page token to receive the subsequent page.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Fetches a @c GTLRSecretManager_ListLocationsResponse.
 *
 *  Lists information about the supported locations for this service.
 *
 *  @param name The resource that owns the locations collection, if applicable.
 *
 *  @return GTLRSecretManagerQuery_ProjectsLocationsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Creates a new SecretVersion containing secret data and attaches it to an
 *  existing Secret.
 *
 *  Method: secretmanager.projects.secrets.addVersion
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsAddVersion : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the Secret to associate with the
 *  SecretVersion in the format `projects/ * /secrets/ *`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRSecretManager_SecretVersion.
 *
 *  Creates a new SecretVersion containing secret data and attaches it to an
 *  existing Secret.
 *
 *  @param object The @c GTLRSecretManager_AddSecretVersionRequest to include in
 *    the query.
 *  @param parent Required. The resource name of the Secret to associate with
 *    the SecretVersion in the format `projects/ * /secrets/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsAddVersion
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_AddSecretVersionRequest *)object
                         parent:(NSString *)parent;

@end

/**
 *  Creates a new Secret containing no SecretVersions.
 *
 *  Method: secretmanager.projects.secrets.create
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsCreate : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the project to associate with the Secret, in
 *  the format `projects/ *`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Required. This must be unique within the project. A secret ID is a string
 *  with a maximum length of 255 characters and can contain uppercase and
 *  lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`)
 *  characters.
 */
@property(nonatomic, copy, nullable) NSString *secretId;

/**
 *  Fetches a @c GTLRSecretManager_Secret.
 *
 *  Creates a new Secret containing no SecretVersions.
 *
 *  @param object The @c GTLRSecretManager_Secret to include in the query.
 *  @param parent Required. The resource name of the project to associate with
 *    the Secret, in the format `projects/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsCreate
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_Secret *)object
                         parent:(NSString *)parent;

@end

/**
 *  Deletes a Secret.
 *
 *  Method: secretmanager.projects.secrets.delete
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsDelete : GTLRSecretManagerQuery

/**
 *  Optional. Etag of the Secret. The request succeeds if it matches the etag of
 *  the currently stored secret object. If the etag is omitted, the request
 *  succeeds.
 */
@property(nonatomic, copy, nullable) NSString *ETag;

/**
 *  Required. The resource name of the Secret to delete in the format `projects/
 *  * /secrets/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_Empty.
 *
 *  Deletes a Secret.
 *
 *  @param name Required. The resource name of the Secret to delete in the
 *    format `projects/ * /secrets/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsDelete
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets metadata for a given Secret.
 *
 *  Method: secretmanager.projects.secrets.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsGet : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the Secret, in the format `projects/ *
 *  /secrets/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_Secret.
 *
 *  Gets metadata for a given Secret.
 *
 *  @param name Required. The resource name of the Secret, in the format
 *    `projects/ * /secrets/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Gets the access control policy for a secret. Returns empty policy if the
 *  secret exists and does not have a policy set.
 *
 *  Method: secretmanager.projects.secrets.getIamPolicy
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsGetIamPolicy : GTLRSecretManagerQuery

/**
 *  Optional. The maximum policy version that will be used to format the policy.
 *  Valid values are 0, 1, and 3. Requests specifying an invalid value will be
 *  rejected. Requests for policies with any conditional role bindings must
 *  specify version 3. Policies with no conditional role bindings may specify
 *  any valid value or leave the field unset. The policy in the response might
 *  use the policy version that you specified, or it might use a lower policy
 *  version. For example, if you specify version 3, but the policy has no
 *  conditional role bindings, the response uses version 1. To learn which
 *  resources support conditions in their IAM policies, see the [IAM
 *  documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
 */
@property(nonatomic, assign) NSInteger optionsRequestedPolicyVersion;

/**
 *  REQUIRED: The resource for which the policy is being requested. See the
 *  operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRSecretManager_Policy.
 *
 *  Gets the access control policy for a secret. Returns empty policy if the
 *  secret exists and does not have a policy set.
 *
 *  @param resource REQUIRED: The resource for which the policy is being
 *    requested. See the operation documentation for the appropriate value for
 *    this field.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsGetIamPolicy
 */
+ (instancetype)queryWithResource:(NSString *)resource;

@end

/**
 *  Lists Secrets.
 *
 *  Method: secretmanager.projects.secrets.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsList : GTLRSecretManagerQuery

/**
 *  Optional. Filter string, adhering to the rules in [List-operation
 *  filtering](https://cloud.google.com/secret-manager/docs/filtering). List
 *  only secrets matching the filter. If filter is empty, all secrets are
 *  listed.
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Optional. The maximum number of results to be returned in a single page. If
 *  set to 0, the server decides the number of results to return. If the number
 *  is greater than 25000, it is capped at 25000.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  Optional. Pagination token, returned earlier via
 *  ListSecretsResponse.next_page_token.
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The resource name of the project associated with the Secrets, in
 *  the format `projects/ *`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRSecretManager_ListSecretsResponse.
 *
 *  Lists Secrets.
 *
 *  @param parent Required. The resource name of the project associated with the
 *    Secrets, in the format `projects/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

/**
 *  Updates metadata of an existing Secret.
 *
 *  Method: secretmanager.projects.secrets.patch
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsPatch : GTLRSecretManagerQuery

/**
 *  Output only. The resource name of the Secret in the format `projects/ *
 *  /secrets/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Required. Specifies the fields to be updated.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

/**
 *  Fetches a @c GTLRSecretManager_Secret.
 *
 *  Updates metadata of an existing Secret.
 *
 *  @param object The @c GTLRSecretManager_Secret to include in the query.
 *  @param name Output only. The resource name of the Secret in the format
 *    `projects/ * /secrets/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsPatch
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_Secret *)object
                           name:(NSString *)name;

@end

/**
 *  Sets the access control policy on the specified secret. Replaces any
 *  existing policy. Permissions on SecretVersions are enforced according to the
 *  policy set on the associated Secret.
 *
 *  Method: secretmanager.projects.secrets.setIamPolicy
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsSetIamPolicy : GTLRSecretManagerQuery

/**
 *  REQUIRED: The resource for which the policy is being specified. See the
 *  operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRSecretManager_Policy.
 *
 *  Sets the access control policy on the specified secret. Replaces any
 *  existing policy. Permissions on SecretVersions are enforced according to the
 *  policy set on the associated Secret.
 *
 *  @param object The @c GTLRSecretManager_SetIamPolicyRequest to include in the
 *    query.
 *  @param resource REQUIRED: The resource for which the policy is being
 *    specified. See the operation documentation for the appropriate value for
 *    this field.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsSetIamPolicy
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_SetIamPolicyRequest *)object
                       resource:(NSString *)resource;

@end

/**
 *  Returns permissions that a caller has for the specified secret. If the
 *  secret does not exist, this call returns an empty set of permissions, not a
 *  NOT_FOUND error. Note: This operation is designed to be used for building
 *  permission-aware UIs and command-line tools, not for authorization checking.
 *  This operation may "fail open" without warning.
 *
 *  Method: secretmanager.projects.secrets.testIamPermissions
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsTestIamPermissions : GTLRSecretManagerQuery

/**
 *  REQUIRED: The resource for which the policy detail is being requested. See
 *  the operation documentation for the appropriate value for this field.
 */
@property(nonatomic, copy, nullable) NSString *resource;

/**
 *  Fetches a @c GTLRSecretManager_TestIamPermissionsResponse.
 *
 *  Returns permissions that a caller has for the specified secret. If the
 *  secret does not exist, this call returns an empty set of permissions, not a
 *  NOT_FOUND error. Note: This operation is designed to be used for building
 *  permission-aware UIs and command-line tools, not for authorization checking.
 *  This operation may "fail open" without warning.
 *
 *  @param object The @c GTLRSecretManager_TestIamPermissionsRequest to include
 *    in the query.
 *  @param resource REQUIRED: The resource for which the policy detail is being
 *    requested. See the operation documentation for the appropriate value for
 *    this field.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsTestIamPermissions
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_TestIamPermissionsRequest *)object
                       resource:(NSString *)resource;

@end

/**
 *  Accesses a SecretVersion. This call returns the secret data. `projects/ *
 *  /secrets/ * /versions/latest` is an alias to the most recently created
 *  SecretVersion.
 *
 *  Method: secretmanager.projects.secrets.versions.access
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsAccess : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the SecretVersion in the format `projects/ *
 *  /secrets/ * /versions/ *`. `projects/ * /secrets/ * /versions/latest` is an
 *  alias to the most recently created SecretVersion.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_AccessSecretVersionResponse.
 *
 *  Accesses a SecretVersion. This call returns the secret data. `projects/ *
 *  /secrets/ * /versions/latest` is an alias to the most recently created
 *  SecretVersion.
 *
 *  @param name Required. The resource name of the SecretVersion in the format
 *    `projects/ * /secrets/ * /versions/ *`. `projects/ * /secrets/ *
 *    /versions/latest` is an alias to the most recently created SecretVersion.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsAccess
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED
 *  and irrevocably destroys the secret data.
 *
 *  Method: secretmanager.projects.secrets.versions.destroy
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsDestroy : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the SecretVersion to destroy in the format
 *  `projects/ * /secrets/ * /versions/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_SecretVersion.
 *
 *  Destroys a SecretVersion. Sets the state of the SecretVersion to DESTROYED
 *  and irrevocably destroys the secret data.
 *
 *  @param object The @c GTLRSecretManager_DestroySecretVersionRequest to
 *    include in the query.
 *  @param name Required. The resource name of the SecretVersion to destroy in
 *    the format `projects/ * /secrets/ * /versions/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsDestroy
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_DestroySecretVersionRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.
 *
 *  Method: secretmanager.projects.secrets.versions.disable
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsDisable : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the SecretVersion to disable in the format
 *  `projects/ * /secrets/ * /versions/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_SecretVersion.
 *
 *  Disables a SecretVersion. Sets the state of the SecretVersion to DISABLED.
 *
 *  @param object The @c GTLRSecretManager_DisableSecretVersionRequest to
 *    include in the query.
 *  @param name Required. The resource name of the SecretVersion to disable in
 *    the format `projects/ * /secrets/ * /versions/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsDisable
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_DisableSecretVersionRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
 *
 *  Method: secretmanager.projects.secrets.versions.enable
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsEnable : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the SecretVersion to enable in the format
 *  `projects/ * /secrets/ * /versions/ *`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_SecretVersion.
 *
 *  Enables a SecretVersion. Sets the state of the SecretVersion to ENABLED.
 *
 *  @param object The @c GTLRSecretManager_EnableSecretVersionRequest to include
 *    in the query.
 *  @param name Required. The resource name of the SecretVersion to enable in
 *    the format `projects/ * /secrets/ * /versions/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsEnable
 */
+ (instancetype)queryWithObject:(GTLRSecretManager_EnableSecretVersionRequest *)object
                           name:(NSString *)name;

@end

/**
 *  Gets metadata for a SecretVersion. `projects/ * /secrets/ *
 *  /versions/latest` is an alias to the most recently created SecretVersion.
 *
 *  Method: secretmanager.projects.secrets.versions.get
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsGet : GTLRSecretManagerQuery

/**
 *  Required. The resource name of the SecretVersion in the format `projects/ *
 *  /secrets/ * /versions/ *`. `projects/ * /secrets/ * /versions/latest` is an
 *  alias to the most recently created SecretVersion.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Fetches a @c GTLRSecretManager_SecretVersion.
 *
 *  Gets metadata for a SecretVersion. `projects/ * /secrets/ *
 *  /versions/latest` is an alias to the most recently created SecretVersion.
 *
 *  @param name Required. The resource name of the SecretVersion in the format
 *    `projects/ * /secrets/ * /versions/ *`. `projects/ * /secrets/ *
 *    /versions/latest` is an alias to the most recently created SecretVersion.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsGet
 */
+ (instancetype)queryWithName:(NSString *)name;

@end

/**
 *  Lists SecretVersions. This call does not return secret data.
 *
 *  Method: secretmanager.projects.secrets.versions.list
 *
 *  Authorization scope(s):
 *    @c kGTLRAuthScopeSecretManagerCloudPlatform
 */
@interface GTLRSecretManagerQuery_ProjectsSecretsVersionsList : GTLRSecretManagerQuery

/**
 *  Optional. Filter string, adhering to the rules in [List-operation
 *  filtering](https://cloud.google.com/secret-manager/docs/filtering). List
 *  only secret versions matching the filter. If filter is empty, all secret
 *  versions are listed.
 */
@property(nonatomic, copy, nullable) NSString *filter;

/**
 *  Optional. The maximum number of results to be returned in a single page. If
 *  set to 0, the server decides the number of results to return. If the number
 *  is greater than 25000, it is capped at 25000.
 */
@property(nonatomic, assign) NSInteger pageSize;

/**
 *  Optional. Pagination token, returned earlier via
 *  ListSecretVersionsResponse.next_page_token][].
 */
@property(nonatomic, copy, nullable) NSString *pageToken;

/**
 *  Required. The resource name of the Secret associated with the SecretVersions
 *  to list, in the format `projects/ * /secrets/ *`.
 */
@property(nonatomic, copy, nullable) NSString *parent;

/**
 *  Fetches a @c GTLRSecretManager_ListSecretVersionsResponse.
 *
 *  Lists SecretVersions. This call does not return secret data.
 *
 *  @param parent Required. The resource name of the Secret associated with the
 *    SecretVersions to list, in the format `projects/ * /secrets/ *`.
 *
 *  @return GTLRSecretManagerQuery_ProjectsSecretsVersionsList
 *
 *  @note Automatic pagination will be done when @c shouldFetchNextPages is
 *        enabled. See @c shouldFetchNextPages on @c GTLRService for more
 *        information.
 */
+ (instancetype)queryWithParent:(NSString *)parent;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
