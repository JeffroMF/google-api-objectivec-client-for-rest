// NOTE: This file was generated by the ServiceGenerator.

// ----------------------------------------------------------------------------
// API:
//   Street View Publish API (streetviewpublish/v1)
// Description:
//   Publishes 360 photos to Google Maps, along with position, orientation, and
//   connectivity metadata. Apps can offer an interface for positioning,
//   connecting, and uploading user-generated Street View images.
// Documentation:
//   https://developers.google.com/streetview/publish/

#if SWIFT_PACKAGE || GTLR_USE_MODULAR_IMPORT
  @import GoogleAPIClientForRESTCore;
#elif GTLR_BUILT_AS_FRAMEWORK
  #import "GTLR/GTLRObject.h"
#else
  #import "GTLRObject.h"
#endif

#if GTLR_RUNTIME_VERSION != 3000
#error This file was generated by a different version of ServiceGenerator which is incompatible with this GTLR library source.
#endif

@class GTLRStreetViewPublish_Connection;
@class GTLRStreetViewPublish_LatLng;
@class GTLRStreetViewPublish_Level;
@class GTLRStreetViewPublish_Operation_Metadata;
@class GTLRStreetViewPublish_Operation_Response;
@class GTLRStreetViewPublish_Photo;
@class GTLRStreetViewPublish_PhotoId;
@class GTLRStreetViewPublish_PhotoResponse;
@class GTLRStreetViewPublish_Place;
@class GTLRStreetViewPublish_Pose;
@class GTLRStreetViewPublish_Status;
@class GTLRStreetViewPublish_Status_Details_Item;
@class GTLRStreetViewPublish_UpdatePhotoRequest;
@class GTLRStreetViewPublish_UploadRef;

// Generated comments include content from the discovery document; avoid them
// causing warnings since clang's checks are some what arbitrary.
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"

NS_ASSUME_NONNULL_BEGIN

// ----------------------------------------------------------------------------
// Constants - For some of the classes' properties below.

// ----------------------------------------------------------------------------
// GTLRStreetViewPublish_Photo.mapsPublishStatus

/**
 *  The photo is published to the public through Google Maps.
 *
 *  Value: "PUBLISHED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_MapsPublishStatus_Published;
/**
 *  The photo has been rejected for an unknown reason.
 *
 *  Value: "REJECTED_UNKNOWN"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_MapsPublishStatus_RejectedUnknown;
/**
 *  The status of the photo is unknown.
 *
 *  Value: "UNSPECIFIED_MAPS_PUBLISH_STATUS"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_MapsPublishStatus_UnspecifiedMapsPublishStatus;

// ----------------------------------------------------------------------------
// GTLRStreetViewPublish_Photo.transferStatus

/**
 *  The sender cancelled this photo transfer.
 *
 *  Value: "CANCELLED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_Cancelled;
/**
 *  The photo transfer has been completed, and this photo has been transferred
 *  to the recipient.
 *
 *  Value: "COMPLETED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_Completed;
/**
 *  The photo transfer expired before the recipient took any action.
 *
 *  Value: "EXPIRED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_Expired;
/**
 *  This photo has never been in a transfer.
 *
 *  Value: "NEVER_TRANSFERRED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_NeverTransferred;
/**
 *  This photo transfer has been initiated, but the receiver has not yet
 *  responded.
 *
 *  Value: "PENDING"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_Pending;
/**
 *  The recipient owns this photo due to a rights transfer.
 *
 *  Value: "RECEIVED_VIA_TRANSFER"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_ReceivedViaTransfer;
/**
 *  The recipient rejected this photo transfer.
 *
 *  Value: "REJECTED"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_Rejected;
/**
 *  The status of this transfer is unspecified.
 *
 *  Value: "TRANSFER_STATUS_UNKNOWN"
 */
FOUNDATION_EXTERN NSString * const kGTLRStreetViewPublish_Photo_TransferStatus_TransferStatusUnknown;

/**
 *  Request to delete multiple Photos.
 */
@interface GTLRStreetViewPublish_BatchDeletePhotosRequest : GTLRObject

/**
 *  Required. IDs of the Photos. HTTP GET requests require the following syntax
 *  for the URL query parameter: `photoIds=&photoIds=&...`.
 */
@property(nonatomic, strong, nullable) NSArray<NSString *> *photoIds;

@end


/**
 *  Response to batch delete of one or more Photos.
 */
@interface GTLRStreetViewPublish_BatchDeletePhotosResponse : GTLRObject

/**
 *  The status for the operation to delete a single Photo in the batch request.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_Status *> *status;

@end


/**
 *  Response to batch get of Photos.
 */
@interface GTLRStreetViewPublish_BatchGetPhotosResponse : GTLRObject

/**
 *  List of results for each individual Photo requested, in the same order as
 *  the requests in BatchGetPhotos.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_PhotoResponse *> *results;

@end


/**
 *  Request to update the metadata of photos. Updating the pixels of photos is
 *  not supported.
 */
@interface GTLRStreetViewPublish_BatchUpdatePhotosRequest : GTLRObject

/** Required. List of UpdatePhotoRequests. */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_UpdatePhotoRequest *> *updatePhotoRequests;

@end


/**
 *  Response to batch update of metadata of one or more Photos.
 */
@interface GTLRStreetViewPublish_BatchUpdatePhotosResponse : GTLRObject

/**
 *  List of results for each individual Photo updated, in the same order as the
 *  request.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_PhotoResponse *> *results;

@end


/**
 *  A connection is the link from a source photo to a destination photo.
 */
@interface GTLRStreetViewPublish_Connection : GTLRObject

/**
 *  Required. The destination of the connection from the containing photo to
 *  another photo.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_PhotoId *target;

@end


/**
 *  A generic empty message that you can re-use to avoid defining duplicated
 *  empty messages in your APIs. A typical example is to use it as the request
 *  or the response type of an API method. For instance: service Foo { rpc
 *  Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 *  representation for `Empty` is empty JSON object `{}`.
 */
@interface GTLRStreetViewPublish_Empty : GTLRObject
@end


/**
 *  An object that represents a latitude/longitude pair. This is expressed as a
 *  pair of doubles to represent degrees latitude and degrees longitude. Unless
 *  specified otherwise, this object must conform to the WGS84 standard. Values
 *  must be within normalized ranges.
 */
@interface GTLRStreetViewPublish_LatLng : GTLRObject

/**
 *  The latitude in degrees. It must be in the range [-90.0, +90.0].
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *latitude;

/**
 *  The longitude in degrees. It must be in the range [-180.0, +180.0].
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *longitude;

@end


/**
 *  Level information containing level number and its corresponding name.
 */
@interface GTLRStreetViewPublish_Level : GTLRObject

/**
 *  Required. A name assigned to this Level, restricted to 3 characters.
 *  Consider how the elevator buttons would be labeled for this level if there
 *  was an elevator.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Optional. Floor number, used for ordering. 0 indicates the ground level, 1
 *  indicates the first level above ground level, -1 indicates the first level
 *  under ground level. Non-integer values are OK.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *number;

@end


/**
 *  Response to list all photos that belong to a user.
 *
 *  @note This class supports NSFastEnumeration and indexed subscripting over
 *        its "photos" property. If returned as the result of a query, it should
 *        support automatic pagination (when @c shouldFetchNextPages is
 *        enabled).
 */
@interface GTLRStreetViewPublish_ListPhotosResponse : GTLRCollectionObject

/**
 *  Token to retrieve the next page of results, or empty if there are no more
 *  results in the list.
 */
@property(nonatomic, copy, nullable) NSString *nextPageToken;

/**
 *  List of photos. The pageSize field in the request determines the number of
 *  items returned.
 *
 *  @note This property is used to support NSFastEnumeration and indexed
 *        subscripting on this class.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_Photo *> *photos;

@end


/**
 *  This resource represents a long-running operation that is the result of a
 *  network API call.
 */
@interface GTLRStreetViewPublish_Operation : GTLRObject

/**
 *  If the value is `false`, it means the operation is still in progress. If
 *  `true`, the operation is completed, and either `error` or `response` is
 *  available.
 *
 *  Uses NSNumber of boolValue.
 */
@property(nonatomic, strong, nullable) NSNumber *done;

/** The error result of the operation in case of failure or cancellation. */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Status *error;

/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Operation_Metadata *metadata;

/**
 *  The server-assigned name, which is only unique within the same service that
 *  originally returns it. If you use the default HTTP mapping, the `name`
 *  should be a resource name ending with `operations/{unique_id}`.
 */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Operation_Response *response;

@end


/**
 *  Service-specific metadata associated with the operation. It typically
 *  contains progress information and common metadata such as create time. Some
 *  services might not provide such metadata. Any method that returns a
 *  long-running operation should document the metadata type, if any.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRStreetViewPublish_Operation_Metadata : GTLRObject
@end


/**
 *  The normal response of the operation in case of success. If the original
 *  method returns no data on success, such as `Delete`, the response is
 *  `google.protobuf.Empty`. If the original method is standard
 *  `Get`/`Create`/`Update`, the response should be the resource. For other
 *  methods, the response should have the type `XxxResponse`, where `Xxx` is the
 *  original method name. For example, if the original method name is
 *  `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRStreetViewPublish_Operation_Response : GTLRObject
@end


/**
 *  Photo is used to store 360 photos along with photo metadata.
 */
@interface GTLRStreetViewPublish_Photo : GTLRObject

/**
 *  Optional. Absolute time when the photo was captured. When the photo has no
 *  exif timestamp, this is used to set a timestamp in the photo metadata.
 */
@property(nonatomic, strong, nullable) GTLRDateTime *captureTime;

/**
 *  Optional. Connections to other photos. A connection represents the link from
 *  this photo to another photo.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_Connection *> *connections;

/**
 *  Output only. The download URL for the photo bytes. This field is set only
 *  when GetPhotoRequest.view is set to PhotoView.INCLUDE_DOWNLOAD_URL.
 */
@property(nonatomic, copy, nullable) NSString *downloadUrl;

/**
 *  Output only. Status in Google Maps, whether this photo was published or
 *  rejected.
 *
 *  Likely values:
 *    @arg @c kGTLRStreetViewPublish_Photo_MapsPublishStatus_Published The photo
 *        is published to the public through Google Maps. (Value: "PUBLISHED")
 *    @arg @c kGTLRStreetViewPublish_Photo_MapsPublishStatus_RejectedUnknown The
 *        photo has been rejected for an unknown reason. (Value:
 *        "REJECTED_UNKNOWN")
 *    @arg @c kGTLRStreetViewPublish_Photo_MapsPublishStatus_UnspecifiedMapsPublishStatus
 *        The status of the photo is unknown. (Value:
 *        "UNSPECIFIED_MAPS_PUBLISH_STATUS")
 */
@property(nonatomic, copy, nullable) NSString *mapsPublishStatus;

/**
 *  Required. Output only. Required when updating a photo. Output only when
 *  creating a photo. Identifier for the photo, which is unique among all photos
 *  in Google.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_PhotoId *photoId;

/** Optional. Places where this photo belongs. */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_Place *> *places;

/** Optional. Pose of the photo. */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Pose *pose;

/** Output only. The share link for the photo. */
@property(nonatomic, copy, nullable) NSString *shareLink;

/**
 *  Output only. The thumbnail URL for showing a preview of the given photo.
 */
@property(nonatomic, copy, nullable) NSString *thumbnailUrl;

/**
 *  Output only. Status of rights transfer on this photo.
 *
 *  Likely values:
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_Cancelled The sender
 *        cancelled this photo transfer. (Value: "CANCELLED")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_Completed The photo
 *        transfer has been completed, and this photo has been transferred to
 *        the recipient. (Value: "COMPLETED")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_Expired The photo
 *        transfer expired before the recipient took any action. (Value:
 *        "EXPIRED")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_NeverTransferred This
 *        photo has never been in a transfer. (Value: "NEVER_TRANSFERRED")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_Pending This photo
 *        transfer has been initiated, but the receiver has not yet responded.
 *        (Value: "PENDING")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_ReceivedViaTransfer
 *        The recipient owns this photo due to a rights transfer. (Value:
 *        "RECEIVED_VIA_TRANSFER")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_Rejected The recipient
 *        rejected this photo transfer. (Value: "REJECTED")
 *    @arg @c kGTLRStreetViewPublish_Photo_TransferStatus_TransferStatusUnknown
 *        The status of this transfer is unspecified. (Value:
 *        "TRANSFER_STATUS_UNKNOWN")
 */
@property(nonatomic, copy, nullable) NSString *transferStatus;

/**
 *  Input only. Required when creating a photo. Input only. The resource URL
 *  where the photo bytes are uploaded to.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_UploadRef *uploadReference;

/** Output only. Time when the image was uploaded. */
@property(nonatomic, strong, nullable) GTLRDateTime *uploadTime;

/**
 *  Output only. View count of the photo.
 *
 *  Uses NSNumber of longLongValue.
 */
@property(nonatomic, strong, nullable) NSNumber *viewCount;

@end


/**
 *  Identifier for a Photo.
 */
@interface GTLRStreetViewPublish_PhotoId : GTLRObject

/**
 *  A unique identifier for a photo.
 *
 *  identifier property maps to 'id' in JSON (to avoid Objective C's 'id').
 */
@property(nonatomic, copy, nullable) NSString *identifier;

@end


/**
 *  Response payload for a single Photo in batch operations including
 *  BatchGetPhotos and BatchUpdatePhotos.
 */
@interface GTLRStreetViewPublish_PhotoResponse : GTLRObject

/** The Photo resource, if the request was successful. */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Photo *photo;

/**
 *  The status for the operation to get or update a single photo in the batch
 *  request.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Status *status;

@end


/**
 *  Place metadata for an entity.
 */
@interface GTLRStreetViewPublish_Place : GTLRObject

/**
 *  Output only. The language_code that the name is localized with. This should
 *  be the language_code specified in the request, but may be a fallback.
 */
@property(nonatomic, copy, nullable) NSString *languageCode;

/** Output only. The name of the place, localized to the language_code. */
@property(nonatomic, copy, nullable) NSString *name;

/**
 *  Place identifier, as described in
 *  https://developers.google.com/places/place-id.
 */
@property(nonatomic, copy, nullable) NSString *placeId;

@end


/**
 *  Raw pose measurement for an entity.
 */
@interface GTLRStreetViewPublish_Pose : GTLRObject

/**
 *  The estimated horizontal accuracy of this pose in meters with 68% confidence
 *  (one standard deviation). For example, on Android, this value is available
 *  from this method:
 *  https://developer.android.com/reference/android/location/Location#getAccuracy().
 *  Other platforms have different methods of obtaining similar accuracy
 *  estimations.
 *
 *  Uses NSNumber of floatValue.
 */
@property(nonatomic, strong, nullable) NSNumber *accuracyMeters;

/**
 *  Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an
 *  unmeasured quantity.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *altitude;

/**
 *  The following pose parameters pertain to the center of the photo. They match
 *  https://developers.google.com/streetview/spherical-metadata. Compass
 *  heading, measured at the center of the photo in degrees clockwise from
 *  North. Value must be >=0 and <360. NaN indicates an unmeasured quantity.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *heading;

/**
 *  Latitude and longitude pair of the pose, as explained here:
 *  https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng
 *  When creating a Photo, if the latitude and longitude pair are not provided,
 *  the geolocation from the exif header is used. A latitude and longitude pair
 *  not provided in the photo or exif header causes the photo process to fail.
 */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_LatLng *latLngPair;

/** Level (the floor in a building) used to configure vertical navigation. */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Level *level;

/**
 *  Pitch, measured at the center of the photo in degrees. Value must be >=-90
 *  and <= 90. A value of -90 means looking directly down, and a value of 90
 *  means looking directly up. NaN indicates an unmeasured quantity.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *pitch;

/**
 *  Roll, measured in degrees. Value must be >= 0 and <360. A value of 0 means
 *  level with the horizon. NaN indicates an unmeasured quantity.
 *
 *  Uses NSNumber of doubleValue.
 */
@property(nonatomic, strong, nullable) NSNumber *roll;

@end


/**
 *  The `Status` type defines a logical error model that is suitable for
 *  different programming environments, including REST APIs and RPC APIs. It is
 *  used by [gRPC](https://github.com/grpc). Each `Status` message contains
 *  three pieces of data: error code, error message, and error details. You can
 *  find out more about this error model and how to work with it in the [API
 *  Design Guide](https://cloud.google.com/apis/design/errors).
 */
@interface GTLRStreetViewPublish_Status : GTLRObject

/**
 *  The status code, which should be an enum value of google.rpc.Code.
 *
 *  Uses NSNumber of intValue.
 */
@property(nonatomic, strong, nullable) NSNumber *code;

/**
 *  A list of messages that carry the error details. There is a common set of
 *  message types for APIs to use.
 */
@property(nonatomic, strong, nullable) NSArray<GTLRStreetViewPublish_Status_Details_Item *> *details;

/**
 *  A developer-facing error message, which should be in English. Any
 *  user-facing error message should be localized and sent in the
 *  google.rpc.Status.details field, or localized by the client.
 */
@property(nonatomic, copy, nullable) NSString *message;

@end


/**
 *  GTLRStreetViewPublish_Status_Details_Item
 *
 *  @note This class is documented as having more properties of any valid JSON
 *        type. Use @c -additionalJSONKeys and @c -additionalPropertyForName: to
 *        get the list of properties and then fetch them; or @c
 *        -additionalProperties to fetch them all at once.
 */
@interface GTLRStreetViewPublish_Status_Details_Item : GTLRObject
@end


/**
 *  Request to update the metadata of a Photo. Updating the pixels of a photo is
 *  not supported.
 */
@interface GTLRStreetViewPublish_UpdatePhotoRequest : GTLRObject

/** Required. Photo object containing the new metadata. */
@property(nonatomic, strong, nullable) GTLRStreetViewPublish_Photo *photo;

/**
 *  Required. Mask that identifies fields on the photo metadata to update. If
 *  not present, the old Photo metadata is entirely replaced with the new Photo
 *  metadata in this request. The update fails if invalid fields are specified.
 *  Multiple fields can be specified in a comma-delimited list. The following
 *  fields are valid: * `pose.heading` * `pose.latLngPair` * `pose.pitch` *
 *  `pose.roll` * `pose.level` * `pose.altitude` * `connections` * `places` >
 *  Note: When updateMask contains repeated fields, the entire set of repeated
 *  values get replaced with the new contents. For example, if updateMask
 *  contains `connections` and `UpdatePhotoRequest.photo.connections` is empty,
 *  all connections are removed.
 *
 *  String format is a comma-separated list of fields.
 */
@property(nonatomic, copy, nullable) NSString *updateMask;

@end


/**
 *  Upload reference for media files.
 */
@interface GTLRStreetViewPublish_UploadRef : GTLRObject

/**
 *  An upload reference should be unique for each user. It follows the form:
 *  "https://streetviewpublish.googleapis.com/media/user/{account_id}/photo/{upload_reference}"
 */
@property(nonatomic, copy, nullable) NSString *uploadUrl;

@end

NS_ASSUME_NONNULL_END

#pragma clang diagnostic pop
