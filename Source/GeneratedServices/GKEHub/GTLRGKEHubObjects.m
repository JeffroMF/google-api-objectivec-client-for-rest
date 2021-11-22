// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   GKE Hub API (gkehub/v1)
// Documentation:
//   https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster

#import "GTLRGKEHubObjects.h"

// ----------------------------------------------------------------------------
// Constants

// GTLRGKEHub_AuditLogConfig.logType
NSString * const kGTLRGKEHub_AuditLogConfig_LogType_AdminRead  = @"ADMIN_READ";
NSString * const kGTLRGKEHub_AuditLogConfig_LogType_DataRead   = @"DATA_READ";
NSString * const kGTLRGKEHub_AuditLogConfig_LogType_DataWrite  = @"DATA_WRITE";
NSString * const kGTLRGKEHub_AuditLogConfig_LogType_LogTypeUnspecified = @"LOG_TYPE_UNSPECIFIED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.admissionWebhook
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_AdmissionWebhook_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_AdmissionWebhook_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_AdmissionWebhook_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_AdmissionWebhook_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.gitSync
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_GitSync_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_GitSync_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_GitSync_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_GitSync_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.importer
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Importer_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Importer_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Importer_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Importer_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.monitor
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Monitor_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Monitor_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Monitor_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Monitor_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.reconcilerManager
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_ReconcilerManager_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_ReconcilerManager_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_ReconcilerManager_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_ReconcilerManager_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.rootReconciler
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_RootReconciler_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_RootReconciler_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_RootReconciler_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_RootReconciler_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementConfigSyncDeploymentState.syncer
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Syncer_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Syncer_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Syncer_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementConfigSyncDeploymentState_Syncer_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementGatekeeperDeploymentState.gatekeeperAudit
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperAudit_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperAudit_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperAudit_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperAudit_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementGatekeeperDeploymentState.gatekeeperControllerManagerState
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperControllerManagerState_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperControllerManagerState_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperControllerManagerState_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementGatekeeperDeploymentState_GatekeeperControllerManagerState_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState.extension
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Extension_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Extension_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Extension_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Extension_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState.hnc
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Hnc_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Hnc_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Hnc_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState_Hnc_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementOperatorState.deploymentState
NSString * const kGTLRGKEHub_ConfigManagementOperatorState_DeploymentState_DeploymentStateUnspecified = @"DEPLOYMENT_STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementOperatorState_DeploymentState_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementOperatorState_DeploymentState_Installed = @"INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementOperatorState_DeploymentState_NotInstalled = @"NOT_INSTALLED";

// GTLRGKEHub_ConfigManagementSyncState.code
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_Error = @"ERROR";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_NotConfigured = @"NOT_CONFIGURED";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_NotInstalled = @"NOT_INSTALLED";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_Pending = @"PENDING";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_SyncCodeUnspecified = @"SYNC_CODE_UNSPECIFIED";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_Synced = @"SYNCED";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_Unauthorized = @"UNAUTHORIZED";
NSString * const kGTLRGKEHub_ConfigManagementSyncState_Code_Unreachable = @"UNREACHABLE";

// GTLRGKEHub_FeatureResourceState.state
NSString * const kGTLRGKEHub_FeatureResourceState_State_Active = @"ACTIVE";
NSString * const kGTLRGKEHub_FeatureResourceState_State_Disabling = @"DISABLING";
NSString * const kGTLRGKEHub_FeatureResourceState_State_Enabling = @"ENABLING";
NSString * const kGTLRGKEHub_FeatureResourceState_State_ServiceUpdating = @"SERVICE_UPDATING";
NSString * const kGTLRGKEHub_FeatureResourceState_State_StateUnspecified = @"STATE_UNSPECIFIED";
NSString * const kGTLRGKEHub_FeatureResourceState_State_Updating = @"UPDATING";

// GTLRGKEHub_FeatureState.code
NSString * const kGTLRGKEHub_FeatureState_Code_CodeUnspecified = @"CODE_UNSPECIFIED";
NSString * const kGTLRGKEHub_FeatureState_Code_Error           = @"ERROR";
NSString * const kGTLRGKEHub_FeatureState_Code_Ok              = @"OK";
NSString * const kGTLRGKEHub_FeatureState_Code_Warning         = @"WARNING";

// GTLRGKEHub_MembershipState.code
NSString * const kGTLRGKEHub_MembershipState_Code_CodeUnspecified = @"CODE_UNSPECIFIED";
NSString * const kGTLRGKEHub_MembershipState_Code_Creating     = @"CREATING";
NSString * const kGTLRGKEHub_MembershipState_Code_Deleting     = @"DELETING";
NSString * const kGTLRGKEHub_MembershipState_Code_Ready        = @"READY";
NSString * const kGTLRGKEHub_MembershipState_Code_ServiceUpdating = @"SERVICE_UPDATING";
NSString * const kGTLRGKEHub_MembershipState_Code_Updating     = @"UPDATING";

// GTLRGKEHub_Status.code
NSString * const kGTLRGKEHub_Status_Code_CodeUnspecified = @"CODE_UNSPECIFIED";
NSString * const kGTLRGKEHub_Status_Code_Failed          = @"FAILED";
NSString * const kGTLRGKEHub_Status_Code_Ok              = @"OK";
NSString * const kGTLRGKEHub_Status_Code_Unknown         = @"UNKNOWN";

// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_AppDevExperienceFeatureSpec
//

@implementation GTLRGKEHub_AppDevExperienceFeatureSpec
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_AppDevExperienceFeatureState
//

@implementation GTLRGKEHub_AppDevExperienceFeatureState
@dynamic networkingInstallSucceeded;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_AuditConfig
//

@implementation GTLRGKEHub_AuditConfig
@dynamic auditLogConfigs, service;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditLogConfigs" : [GTLRGKEHub_AuditLogConfig class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_AuditLogConfig
//

@implementation GTLRGKEHub_AuditLogConfig
@dynamic exemptedMembers, logType;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"exemptedMembers" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Authority
//

@implementation GTLRGKEHub_Authority
@dynamic identityProvider, issuer, oidcJwks, workloadIdentityPool;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Binding
//

@implementation GTLRGKEHub_Binding
@dynamic condition, members, role;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"members" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_CancelOperationRequest
//

@implementation GTLRGKEHub_CancelOperationRequest
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_CommonFeatureSpec
//

@implementation GTLRGKEHub_CommonFeatureSpec
@dynamic appdevexperience, multiclusteringress;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_CommonFeatureState
//

@implementation GTLRGKEHub_CommonFeatureState
@dynamic appdevexperience, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementConfigSync
//

@implementation GTLRGKEHub_ConfigManagementConfigSync
@dynamic enabled, git, preventDrift, sourceFormat;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementConfigSyncDeploymentState
//

@implementation GTLRGKEHub_ConfigManagementConfigSyncDeploymentState
@dynamic admissionWebhook, gitSync, importer, monitor, reconcilerManager,
         rootReconciler, syncer;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementConfigSyncState
//

@implementation GTLRGKEHub_ConfigManagementConfigSyncState
@dynamic deploymentState, syncState, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementConfigSyncVersion
//

@implementation GTLRGKEHub_ConfigManagementConfigSyncVersion
@dynamic admissionWebhook, gitSync, importer, monitor, reconcilerManager,
         rootReconciler, syncer;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementErrorResource
//

@implementation GTLRGKEHub_ConfigManagementErrorResource
@dynamic resourceGvk, resourceName, resourceNamespace, sourcePath;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementGatekeeperDeploymentState
//

@implementation GTLRGKEHub_ConfigManagementGatekeeperDeploymentState
@dynamic gatekeeperAudit, gatekeeperControllerManagerState;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementGitConfig
//

@implementation GTLRGKEHub_ConfigManagementGitConfig
@dynamic gcpServiceAccountEmail, httpsProxy, policyDir, secretType, syncBranch,
         syncRepo, syncRev, syncWaitSecs;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementGroupVersionKind
//

@implementation GTLRGKEHub_ConfigManagementGroupVersionKind
@dynamic group, kind, version;

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementHierarchyControllerConfig
//

@implementation GTLRGKEHub_ConfigManagementHierarchyControllerConfig
@dynamic enabled, enableHierarchicalResourceQuota, enablePodTreeLabels;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState
//

@implementation GTLRGKEHub_ConfigManagementHierarchyControllerDeploymentState
@dynamic extension, hnc;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementHierarchyControllerState
//

@implementation GTLRGKEHub_ConfigManagementHierarchyControllerState
@dynamic state, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementHierarchyControllerVersion
//

@implementation GTLRGKEHub_ConfigManagementHierarchyControllerVersion
@dynamic extension, hnc;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementInstallError
//

@implementation GTLRGKEHub_ConfigManagementInstallError
@dynamic errorMessage;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementMembershipSpec
//

@implementation GTLRGKEHub_ConfigManagementMembershipSpec
@dynamic configSync, hierarchyController, policyController, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementMembershipState
//

@implementation GTLRGKEHub_ConfigManagementMembershipState
@dynamic clusterName, configSyncState, hierarchyControllerState, membershipSpec,
         operatorState, policyControllerState;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementOperatorState
//

@implementation GTLRGKEHub_ConfigManagementOperatorState
@dynamic deploymentState, errors, version;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"errors" : [GTLRGKEHub_ConfigManagementInstallError class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementPolicyController
//

@implementation GTLRGKEHub_ConfigManagementPolicyController
@dynamic auditIntervalSeconds, enabled, exemptableNamespaces, logDeniesEnabled,
         referentialRulesEnabled, templateLibraryInstalled;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"exemptableNamespaces" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementPolicyControllerState
//

@implementation GTLRGKEHub_ConfigManagementPolicyControllerState
@dynamic deploymentState, version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementPolicyControllerVersion
//

@implementation GTLRGKEHub_ConfigManagementPolicyControllerVersion
@dynamic version;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementSyncError
//

@implementation GTLRGKEHub_ConfigManagementSyncError
@dynamic code, errorMessage, errorResources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"errorResources" : [GTLRGKEHub_ConfigManagementErrorResource class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConfigManagementSyncState
//

@implementation GTLRGKEHub_ConfigManagementSyncState
@dynamic code, errors, importToken, lastSync, lastSyncTime, sourceToken,
         syncToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"errors" : [GTLRGKEHub_ConfigManagementSyncError class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ConnectAgentResource
//

@implementation GTLRGKEHub_ConnectAgentResource
@dynamic manifest, type;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Empty
//

@implementation GTLRGKEHub_Empty
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Expr
//

@implementation GTLRGKEHub_Expr
@dynamic descriptionProperty, expression, location, title;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Feature
//

@implementation GTLRGKEHub_Feature
@dynamic createTime, deleteTime, labels, membershipSpecs, membershipStates,
         name, resourceState, spec, state, updateTime;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Feature_Labels
//

@implementation GTLRGKEHub_Feature_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Feature_MembershipSpecs
//

@implementation GTLRGKEHub_Feature_MembershipSpecs

+ (Class)classForAdditionalProperties {
  return [GTLRGKEHub_MembershipFeatureSpec class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Feature_MembershipStates
//

@implementation GTLRGKEHub_Feature_MembershipStates

+ (Class)classForAdditionalProperties {
  return [GTLRGKEHub_MembershipFeatureState class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_FeatureResourceState
//

@implementation GTLRGKEHub_FeatureResourceState
@dynamic state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_FeatureState
//

@implementation GTLRGKEHub_FeatureState
@dynamic code, descriptionProperty, updateTime;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_GenerateConnectManifestResponse
//

@implementation GTLRGKEHub_GenerateConnectManifestResponse
@dynamic manifest;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"manifest" : [GTLRGKEHub_ConnectAgentResource class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_GkeCluster
//

@implementation GTLRGKEHub_GkeCluster
@dynamic clusterMissing, resourceLink;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_GoogleRpcStatus
//

@implementation GTLRGKEHub_GoogleRpcStatus
@dynamic code, details, message;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"details" : [GTLRGKEHub_GoogleRpcStatus_Details_Item class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_GoogleRpcStatus_Details_Item
//

@implementation GTLRGKEHub_GoogleRpcStatus_Details_Item

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_KubernetesMetadata
//

@implementation GTLRGKEHub_KubernetesMetadata
@dynamic kubernetesApiServerVersion, memoryMb, nodeCount, nodeProviderId,
         updateTime, vcpuCount;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_KubernetesResource
//

@implementation GTLRGKEHub_KubernetesResource
@dynamic connectResources, membershipCrManifest, membershipResources,
         resourceOptions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"connectResources" : [GTLRGKEHub_ResourceManifest class],
    @"membershipResources" : [GTLRGKEHub_ResourceManifest class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ListFeaturesResponse
//

@implementation GTLRGKEHub_ListFeaturesResponse
@dynamic nextPageToken, resources;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRGKEHub_Feature class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ListLocationsResponse
//

@implementation GTLRGKEHub_ListLocationsResponse
@dynamic locations, nextPageToken;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"locations" : [GTLRGKEHub_Location class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"locations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ListMembershipsResponse
//

@implementation GTLRGKEHub_ListMembershipsResponse
@dynamic nextPageToken, resources, unreachable;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"resources" : [GTLRGKEHub_Membership class],
    @"unreachable" : [NSString class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"resources";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ListOperationsResponse
//

@implementation GTLRGKEHub_ListOperationsResponse
@dynamic nextPageToken, operations;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"operations" : [GTLRGKEHub_Operation class]
  };
  return map;
}

+ (NSString *)collectionItemsKey {
  return @"operations";
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Location
//

@implementation GTLRGKEHub_Location
@dynamic displayName, labels, locationId, metadata, name;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Location_Labels
//

@implementation GTLRGKEHub_Location_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Location_Metadata
//

@implementation GTLRGKEHub_Location_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Membership
//

@implementation GTLRGKEHub_Membership
@dynamic authority, createTime, deleteTime, descriptionProperty, endpoint,
         externalId, labels, lastConnectionTime, name, state, uniqueId,
         updateTime;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Membership_Labels
//

@implementation GTLRGKEHub_Membership_Labels

+ (Class)classForAdditionalProperties {
  return [NSString class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MembershipEndpoint
//

@implementation GTLRGKEHub_MembershipEndpoint
@dynamic gkeCluster, kubernetesMetadata, kubernetesResource, multiCloudCluster,
         onPremCluster;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MembershipFeatureSpec
//

@implementation GTLRGKEHub_MembershipFeatureSpec
@dynamic configmanagement;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MembershipFeatureState
//

@implementation GTLRGKEHub_MembershipFeatureState
@dynamic appdevexperience, configmanagement, state;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MembershipState
//

@implementation GTLRGKEHub_MembershipState
@dynamic code;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MultiCloudCluster
//

@implementation GTLRGKEHub_MultiCloudCluster
@dynamic clusterMissing, resourceLink;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_MultiClusterIngressFeatureSpec
//

@implementation GTLRGKEHub_MultiClusterIngressFeatureSpec
@dynamic configMembership;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_OnPremCluster
//

@implementation GTLRGKEHub_OnPremCluster
@dynamic adminCluster, clusterMissing, resourceLink;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Operation
//

@implementation GTLRGKEHub_Operation
@dynamic done, error, metadata, name, response;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Operation_Metadata
//

@implementation GTLRGKEHub_Operation_Metadata

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Operation_Response
//

@implementation GTLRGKEHub_Operation_Response

+ (Class)classForAdditionalProperties {
  return [NSObject class];
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_OperationMetadata
//

@implementation GTLRGKEHub_OperationMetadata
@dynamic apiVersion, cancelRequested, createTime, endTime, statusDetail, target,
         verb;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Policy
//

@implementation GTLRGKEHub_Policy
@dynamic auditConfigs, bindings, ETag, version;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"ETag" : @"etag" };
}

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"auditConfigs" : [GTLRGKEHub_AuditConfig class],
    @"bindings" : [GTLRGKEHub_Binding class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ResourceManifest
//

@implementation GTLRGKEHub_ResourceManifest
@dynamic clusterScoped, manifest;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_ResourceOptions
//

@implementation GTLRGKEHub_ResourceOptions
@dynamic connectVersion, v1beta1Crd;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_SetIamPolicyRequest
//

@implementation GTLRGKEHub_SetIamPolicyRequest
@dynamic policy, updateMask;
@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_Status
//

@implementation GTLRGKEHub_Status
@dynamic code, descriptionProperty;

+ (NSDictionary<NSString *, NSString *> *)propertyToJSONKeyMap {
  return @{ @"descriptionProperty" : @"description" };
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_TestIamPermissionsRequest
//

@implementation GTLRGKEHub_TestIamPermissionsRequest
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_TestIamPermissionsResponse
//

@implementation GTLRGKEHub_TestIamPermissionsResponse
@dynamic permissions;

+ (NSDictionary<NSString *, Class> *)arrayPropertyToClassMap {
  NSDictionary<NSString *, Class> *map = @{
    @"permissions" : [NSString class]
  };
  return map;
}

@end


// ----------------------------------------------------------------------------
//
//   GTLRGKEHub_TypeMeta
//

@implementation GTLRGKEHub_TypeMeta
@dynamic apiVersion, kind;

+ (BOOL)isKindValidForClassRegistry {
  // This class has a "kind" property that doesn't appear to be usable to
  // determine what type of object was encoded in the JSON.
  return NO;
}

@end
