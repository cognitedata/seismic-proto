---
sidebar: auto
sidebarDepth: 2
---
# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [cognite/seismic/protos/ingest_service.proto](#cognite_seismic_protos_ingest_service-proto)
    - [Ingest](#com-cognite-seismic-Ingest)
  
- [cognite/seismic/protos/ingest_job.proto](#cognite_seismic_protos_ingest_job-proto)
    - [IngestJob](#com-cognite-seismic-IngestJob)
  
- [cognite/seismic/protos/types.proto](#cognite_seismic_protos_types-proto)
    - [CRS](#com-cognite-seismic-CRS)
    - [Coordinate](#com-cognite-seismic-Coordinate)
    - [CoverageParameters](#com-cognite-seismic-CoverageParameters)
    - [CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage)
    - [CustomSurveyCoverage.NoCustomCoverage](#com-cognite-seismic-CustomSurveyCoverage-NoCustomCoverage)
    - [DeduceFromTraces](#com-cognite-seismic-DeduceFromTraces)
    - [DoubleTraceCoordinates](#com-cognite-seismic-DoubleTraceCoordinates)
    - [ExternalId](#com-cognite-seismic-ExternalId)
    - [File](#com-cognite-seismic-File)
    - [File.MetadataEntry](#com-cognite-seismic-File-MetadataEntry)
    - [GeoJson](#com-cognite-seismic-GeoJson)
    - [Geometry](#com-cognite-seismic-Geometry)
    - [Identifier](#com-cognite-seismic-Identifier)
    - [LineBasedRectangle](#com-cognite-seismic-LineBasedRectangle)
    - [LineDescriptor](#com-cognite-seismic-LineDescriptor)
    - [LineRange](#com-cognite-seismic-LineRange)
    - [LineSelect](#com-cognite-seismic-LineSelect)
    - [P6Transformation](#com-cognite-seismic-P6Transformation)
    - [PositionQuery](#com-cognite-seismic-PositionQuery)
    - [Project](#com-cognite-seismic-Project)
    - [SlabTrace](#com-cognite-seismic-SlabTrace)
    - [SurfacePoint](#com-cognite-seismic-SurfacePoint)
    - [Survey](#com-cognite-seismic-Survey)
    - [Survey.MetadataEntry](#com-cognite-seismic-Survey-MetadataEntry)
    - [SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation)
    - [Trace](#com-cognite-seismic-Trace)
    - [TraceCorners](#com-cognite-seismic-TraceCorners)
    - [Wkt](#com-cognite-seismic-Wkt)
  
    - [FileStep](#com-cognite-seismic-FileStep)
    - [Handedness](#com-cognite-seismic-Handedness)
    - [IngestionSource](#com-cognite-seismic-IngestionSource)
    - [InterpolationMethod](#com-cognite-seismic-InterpolationMethod)
    - [JobStatus](#com-cognite-seismic-JobStatus)
  
- [cognite/seismic/protos/experimental/experimental_service.proto](#cognite_seismic_protos_experimental_experimental_service-proto)
    - [ExperimentalAPI](#com-cognite-seismic-experimental-ExperimentalAPI)
  
- [cognite/seismic/protos/experimental/experimental_service_messages.proto](#cognite_seismic_protos_experimental_experimental_service_messages-proto)
- [cognite/seismic/protos/ingest_service_messages.proto](#cognite_seismic_protos_ingest_service_messages-proto)
    - [DeleteFileRequest](#com-cognite-seismic-DeleteFileRequest)
    - [DeleteSurveyRequest](#com-cognite-seismic-DeleteSurveyRequest)
    - [EditFileAccessRequest](#com-cognite-seismic-EditFileAccessRequest)
    - [EditFileRequest](#com-cognite-seismic-EditFileRequest)
    - [EditFileRequest.MetadataEntry](#com-cognite-seismic-EditFileRequest-MetadataEntry)
    - [EditFileResponse](#com-cognite-seismic-EditFileResponse)
    - [EditSurveyRequest](#com-cognite-seismic-EditSurveyRequest)
    - [EditSurveyRequest.MetadataEntry](#com-cognite-seismic-EditSurveyRequest-MetadataEntry)
    - [EditSurveyResponse](#com-cognite-seismic-EditSurveyResponse)
    - [IngestFileRequest](#com-cognite-seismic-IngestFileRequest)
    - [IngestFileResponse](#com-cognite-seismic-IngestFileResponse)
    - [IngestionLog](#com-cognite-seismic-IngestionLog)
    - [ListFileAccessRequest](#com-cognite-seismic-ListFileAccessRequest)
    - [ProjectListResponse](#com-cognite-seismic-ProjectListResponse)
    - [RegisterFileRequest](#com-cognite-seismic-RegisterFileRequest)
    - [RegisterFileRequest.MetadataEntry](#com-cognite-seismic-RegisterFileRequest-MetadataEntry)
    - [RegisterFileResponse](#com-cognite-seismic-RegisterFileResponse)
    - [RegisterSurveyRequest](#com-cognite-seismic-RegisterSurveyRequest)
    - [RegisterSurveyRequest.MetadataEntry](#com-cognite-seismic-RegisterSurveyRequest-MetadataEntry)
    - [RegisterSurveyResponse](#com-cognite-seismic-RegisterSurveyResponse)
    - [StatusRequest](#com-cognite-seismic-StatusRequest)
    - [StatusResponse](#com-cognite-seismic-StatusResponse)
    - [StoreTraceRequest](#com-cognite-seismic-StoreTraceRequest)
  
- [cognite/seismic/protos/query_service_messages.proto](#cognite_seismic_protos_query_service_messages-proto)
    - [AvailableLines](#com-cognite-seismic-AvailableLines)
    - [BinaryHeader](#com-cognite-seismic-BinaryHeader)
    - [CoordinateQuery](#com-cognite-seismic-CoordinateQuery)
    - [CoordinateTraceQueryRequest](#com-cognite-seismic-CoordinateTraceQueryRequest)
    - [DataCoverageResponse](#com-cognite-seismic-DataCoverageResponse)
    - [FileCoverageRequest](#com-cognite-seismic-FileCoverageRequest)
    - [FileLineQueryRequest](#com-cognite-seismic-FileLineQueryRequest)
    - [FileQueryRequest](#com-cognite-seismic-FileQueryRequest)
    - [GeometryCubeRequest](#com-cognite-seismic-GeometryCubeRequest)
    - [GeometrySliceQueryRequest](#com-cognite-seismic-GeometrySliceQueryRequest)
    - [GeometryTimeSliceQueryRequest](#com-cognite-seismic-GeometryTimeSliceQueryRequest)
    - [GetBinaryHeaderResponse](#com-cognite-seismic-GetBinaryHeaderResponse)
    - [GetFileResponse](#com-cognite-seismic-GetFileResponse)
    - [GetSurveyResponse](#com-cognite-seismic-GetSurveyResponse)
    - [GetTextHeaderResponse](#com-cognite-seismic-GetTextHeaderResponse)
    - [HeaderFileQueryRequest](#com-cognite-seismic-HeaderFileQueryRequest)
    - [KeyValueFilter](#com-cognite-seismic-KeyValueFilter)
    - [LineBasedVolume](#com-cognite-seismic-LineBasedVolume)
    - [LineCubeRequest](#com-cognite-seismic-LineCubeRequest)
    - [LineRangeResponse](#com-cognite-seismic-LineRangeResponse)
    - [LineSlabRequest](#com-cognite-seismic-LineSlabRequest)
    - [LineSliceQueryRequest](#com-cognite-seismic-LineSliceQueryRequest)
    - [LineTraceQueryRequest](#com-cognite-seismic-LineTraceQueryRequest)
    - [ListFilesResponse](#com-cognite-seismic-ListFilesResponse)
    - [ListSurveysQueryRequest](#com-cognite-seismic-ListSurveysQueryRequest)
    - [MetadataFilter](#com-cognite-seismic-MetadataFilter)
    - [MetadataFilter.FilterEntry](#com-cognite-seismic-MetadataFilter-FilterEntry)
    - [NavigationPolygonRequest](#com-cognite-seismic-NavigationPolygonRequest)
    - [PathQueryRequest](#com-cognite-seismic-PathQueryRequest)
    - [SearchSurveyRequest](#com-cognite-seismic-SearchSurveyRequest)
    - [SegYQueryRequest](#com-cognite-seismic-SegYQueryRequest)
    - [SegYQueryResponse](#com-cognite-seismic-SegYQueryResponse)
    - [Surface](#com-cognite-seismic-Surface)
    - [SurveyQueryRequest](#com-cognite-seismic-SurveyQueryRequest)
    - [SurveyWithFiles](#com-cognite-seismic-SurveyWithFiles)
    - [SurveyWithFiles.MetadataEntry](#com-cognite-seismic-SurveyWithFiles-MetadataEntry)
    - [SurveyWithFilesResponse](#com-cognite-seismic-SurveyWithFilesResponse)
    - [TextHeader](#com-cognite-seismic-TextHeader)
    - [TraceValueRange](#com-cognite-seismic-TraceValueRange)
    - [VolumeRequest](#com-cognite-seismic-VolumeRequest)
  
- [cognite/seismic/protos/v1/seismic_service_datatypes.proto](#cognite_seismic_protos_v1_seismic_service_datatypes-proto)
    - [BinaryHeader](#com-cognite-seismic-v1-BinaryHeader)
    - [Coordinate](#com-cognite-seismic-v1-Coordinate)
    - [CoverageSpec](#com-cognite-seismic-v1-CoverageSpec)
    - [Filter](#com-cognite-seismic-v1-Filter)
    - [GeometryFilter](#com-cognite-seismic-v1-GeometryFilter)
    - [Identifier](#com-cognite-seismic-v1-Identifier)
    - [KeyValueExactMatch](#com-cognite-seismic-v1-KeyValueExactMatch)
    - [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter)
    - [LineBasedExtent](#com-cognite-seismic-v1-LineBasedExtent)
    - [LineBasedVolume](#com-cognite-seismic-v1-LineBasedVolume)
    - [LineRange](#com-cognite-seismic-v1-LineRange)
    - [LineSelect](#com-cognite-seismic-v1-LineSelect)
    - [MetadataFilter](#com-cognite-seismic-v1-MetadataFilter)
    - [MinorLines](#com-cognite-seismic-v1-MinorLines)
    - [OptionalMap](#com-cognite-seismic-v1-OptionalMap)
    - [OptionalMap.DataEntry](#com-cognite-seismic-v1-OptionalMap-DataEntry)
    - [Partition](#com-cognite-seismic-v1-Partition)
    - [SearchSpec](#com-cognite-seismic-v1-SearchSpec)
    - [SegyOverrides](#com-cognite-seismic-v1-SegyOverrides)
    - [Seismic](#com-cognite-seismic-v1-Seismic)
    - [Seismic.MetadataEntry](#com-cognite-seismic-v1-Seismic-MetadataEntry)
    - [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent)
    - [Seismic2dRange](#com-cognite-seismic-v1-Seismic2dRange)
    - [Seismic3dDef](#com-cognite-seismic-v1-Seismic3dDef)
    - [Seismic3dDef.LinesEntry](#com-cognite-seismic-v1-Seismic3dDef-LinesEntry)
    - [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent)
    - [Seismic3dRect](#com-cognite-seismic-v1-Seismic3dRect)
    - [Seismic3dRects](#com-cognite-seismic-v1-Seismic3dRects)
    - [SeismicCutout](#com-cognite-seismic-v1-SeismicCutout)
    - [SeismicExtent](#com-cognite-seismic-v1-SeismicExtent)
    - [SeismicStore](#com-cognite-seismic-v1-SeismicStore)
    - [SeismicStore.MetadataEntry](#com-cognite-seismic-v1-SeismicStore-MetadataEntry)
    - [SeismicTraceGroupExtent](#com-cognite-seismic-v1-SeismicTraceGroupExtent)
    - [SeismicTraceGroupLines](#com-cognite-seismic-v1-SeismicTraceGroupLines)
    - [SourceSegyFile](#com-cognite-seismic-v1-SourceSegyFile)
    - [SourceSegyFile.MetadataEntry](#com-cognite-seismic-v1-SourceSegyFile-MetadataEntry)
    - [Survey](#com-cognite-seismic-v1-Survey)
    - [Survey.MetadataEntry](#com-cognite-seismic-v1-Survey-MetadataEntry)
    - [TextHeader](#com-cognite-seismic-v1-TextHeader)
    - [TraceExtent](#com-cognite-seismic-v1-TraceExtent)
    - [VolumeDef](#com-cognite-seismic-v1-VolumeDef)
  
    - [CoverageSpec.Format](#com-cognite-seismic-v1-CoverageSpec-Format)
    - [Dimensions](#com-cognite-seismic-v1-Dimensions)
    - [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType)
    - [SurveyCoverageSource](#com-cognite-seismic-v1-SurveyCoverageSource)
    - [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField)
  
- [cognite/seismic/protos/v1/seismic_service.proto](#cognite_seismic_protos_v1_seismic_service-proto)
    - [SeismicAPI](#com-cognite-seismic-v1-SeismicAPI)
  
- [cognite/seismic/protos/v1/seismic_service_messages.proto](#cognite_seismic_protos_v1_seismic_service_messages-proto)
    - [CreatePartitionRequest](#com-cognite-seismic-v1-CreatePartitionRequest)
    - [CreateSeismicRequest](#com-cognite-seismic-v1-CreateSeismicRequest)
    - [CreateSurveyRequest](#com-cognite-seismic-v1-CreateSurveyRequest)
    - [CreateSurveyRequest.MetadataEntry](#com-cognite-seismic-v1-CreateSurveyRequest-MetadataEntry)
    - [DeletePartitionRequest](#com-cognite-seismic-v1-DeletePartitionRequest)
    - [DeletePartitionResponse](#com-cognite-seismic-v1-DeletePartitionResponse)
    - [DeleteSeismicRequest](#com-cognite-seismic-v1-DeleteSeismicRequest)
    - [DeleteSeismicResponse](#com-cognite-seismic-v1-DeleteSeismicResponse)
    - [DeleteSeismicStoreRequest](#com-cognite-seismic-v1-DeleteSeismicStoreRequest)
    - [DeleteSeismicStoreResponse](#com-cognite-seismic-v1-DeleteSeismicStoreResponse)
    - [DeleteSurveyRequest](#com-cognite-seismic-v1-DeleteSurveyRequest)
    - [DeleteSurveyResponse](#com-cognite-seismic-v1-DeleteSurveyResponse)
    - [EditPartitionRequest](#com-cognite-seismic-v1-EditPartitionRequest)
    - [EditSeismicRequest](#com-cognite-seismic-v1-EditSeismicRequest)
    - [EditSeismicStoreRequest](#com-cognite-seismic-v1-EditSeismicStoreRequest)
    - [EditSourceSegyFileRequest](#com-cognite-seismic-v1-EditSourceSegyFileRequest)
    - [EditSourceSegyFileRequest.MetadataEntry](#com-cognite-seismic-v1-EditSourceSegyFileRequest-MetadataEntry)
    - [EditSourceSegyFileResponse](#com-cognite-seismic-v1-EditSourceSegyFileResponse)
    - [EditSurveyRequest](#com-cognite-seismic-v1-EditSurveyRequest)
    - [GeometryBasedVolume](#com-cognite-seismic-v1-GeometryBasedVolume)
    - [IngestSourceSegyFileRequest](#com-cognite-seismic-v1-IngestSourceSegyFileRequest)
    - [IngestSourceSegyFileResponse](#com-cognite-seismic-v1-IngestSourceSegyFileResponse)
    - [IngestionLog](#com-cognite-seismic-v1-IngestionLog)
    - [InspectIngestionRequest](#com-cognite-seismic-v1-InspectIngestionRequest)
    - [InspectIngestionResponse](#com-cognite-seismic-v1-InspectIngestionResponse)
    - [JobStatusResponse](#com-cognite-seismic-v1-JobStatusResponse)
    - [RegisterSourceSegyFileRequest](#com-cognite-seismic-v1-RegisterSourceSegyFileRequest)
    - [RegisterSourceSegyFileRequest.MetadataEntry](#com-cognite-seismic-v1-RegisterSourceSegyFileRequest-MetadataEntry)
    - [RegisterSourceSegyFileResponse](#com-cognite-seismic-v1-RegisterSourceSegyFileResponse)
    - [SearchFilesRequest](#com-cognite-seismic-v1-SearchFilesRequest)
    - [SearchJobStatusRequest](#com-cognite-seismic-v1-SearchJobStatusRequest)
    - [SearchPartitionsRequest](#com-cognite-seismic-v1-SearchPartitionsRequest)
    - [SearchSeismicStoresRequest](#com-cognite-seismic-v1-SearchSeismicStoresRequest)
    - [SearchSeismicsRequest](#com-cognite-seismic-v1-SearchSeismicsRequest)
    - [SearchSurveyResponse](#com-cognite-seismic-v1-SearchSurveyResponse)
    - [SearchSurveysRequest](#com-cognite-seismic-v1-SearchSurveysRequest)
    - [SegYSeismicRequest](#com-cognite-seismic-v1-SegYSeismicRequest)
    - [SegYSeismicResponse](#com-cognite-seismic-v1-SegYSeismicResponse)
    - [StreamTracesRequest](#com-cognite-seismic-v1-StreamTracesRequest)
    - [TraceBounds](#com-cognite-seismic-v1-TraceBounds)
    - [TwoDeeBounds](#com-cognite-seismic-v1-TwoDeeBounds)
    - [UnregisterSourceSegyFileRequest](#com-cognite-seismic-v1-UnregisterSourceSegyFileRequest)
    - [UnregisterSourceSegyFileResponse](#com-cognite-seismic-v1-UnregisterSourceSegyFileResponse)
    - [VolumeBoundsResponse](#com-cognite-seismic-v1-VolumeBoundsResponse)
    - [VolumeRequest](#com-cognite-seismic-v1-VolumeRequest)
  
- [cognite/seismic/protos/persisted_trace.proto](#cognite_seismic_protos_persisted_trace-proto)
    - [PersistedTrace](#com-cognite-seismic-PersistedTrace)
  
- [cognite/seismic/protos/query_service.proto](#cognite_seismic_protos_query_service-proto)
    - [Query](#com-cognite-seismic-Query)
  
- [Scalar Value Types](#scalar-value-types)



<a name="cognite_seismic_protos_ingest_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/ingest_service.proto


 

 

 


<a name="com-cognite-seismic-Ingest"></a>

### Ingest
Service for ingestion and metadata updates of SEG-Y files into Cognite Data Fusion (CDF) seismic datastore

We use the word `File` to refer to a single seismic file/dataset/cube
Surveys can have many files attached to them, with different attributes or processing stages, and every file must
belong to a survey
The expected order of ingestion is:

1) Register a survey, if it does not exist

2) Register a file
Files are expected to be previously uploaded to a Google Cloud Storage (GCS) bucket at this point, and the service needs
permission to this bucket in the form of a service account.
The RegisterFile endpoint will request the survey name or id, bucket address and the CRS used in this file
(e.g.: EDM50, WGS84), so be sure to have this information prior at hand.

3) Ingest the file
If the RegisterFile endpoint completes successfully, and your file is found in the bucket, you can now send a request to
the IngestFile endpoint, and an asynchronous process will be started remotely to download and process the file.
You can verify the status of this process by calling the Status endpoint  with the id returned in the IngestFile endpoint

As soon as the status of the processing job is set to complete, data from the file will be available with the query service

When a file is registered in a CDF project, this project owns the file. It is then allowed to share access with other
CDF projects

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| RegisterSurvey | [RegisterSurveyRequest](#com-cognite-seismic-RegisterSurveyRequest) | [RegisterSurveyResponse](#com-cognite-seismic-RegisterSurveyResponse) | Registers a new survey. |
| RegisterFile | [RegisterFileRequest](#com-cognite-seismic-RegisterFileRequest) | [RegisterFileResponse](#com-cognite-seismic-RegisterFileResponse) | Registers a new file in a (previously registered) survey. |
| IngestFile | [IngestFileRequest](#com-cognite-seismic-IngestFileRequest) | [IngestFileResponse](#com-cognite-seismic-IngestFileResponse) | Sends a request for the ingestion of a registered file into the queue. Will return a job id which can be queried for status. |
| Status | [StatusRequest](#com-cognite-seismic-StatusRequest) | [StatusResponse](#com-cognite-seismic-StatusResponse) | Retrieves the status of an ingestion job. |
| DeleteFile | [DeleteFileRequest](#com-cognite-seismic-DeleteFileRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Deletes a file |
| DeleteSurvey | [DeleteSurveyRequest](#com-cognite-seismic-DeleteSurveyRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Deletes a survey |
| EditFile | [EditFileRequest](#com-cognite-seismic-EditFileRequest) | [EditFileResponse](#com-cognite-seismic-EditFileResponse) | Updates file metadata |
| EditSurvey | [EditSurveyRequest](#com-cognite-seismic-EditSurveyRequest) | [EditSurveyResponse](#com-cognite-seismic-EditSurveyResponse) | Updates survey metadata |
| ListFileAccess | [ListFileAccessRequest](#com-cognite-seismic-ListFileAccessRequest) | [ProjectListResponse](#com-cognite-seismic-ProjectListResponse) | List projects that have access to a specific file. Only users in the CDF project that owns the file have access to this method DEPRECATED - multitenant file sharing is not supported anymore |
| EditFileAccess | [EditFileAccessRequest](#com-cognite-seismic-EditFileAccessRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Add or remove access to a file for CDF projects Only users in the CDF project that owns the file have access to this method DEPRECATED - multitenant file sharing is not supported anymore |
| StoreTrace | [StoreTraceRequest](#com-cognite-seismic-StoreTraceRequest) | [.google.protobuf.Empty](#google-protobuf-Empty) | Store a single trace to synthetic file/volume |

 



<a name="cognite_seismic_protos_ingest_job-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/ingest_job.proto



<a name="com-cognite-seismic-IngestJob"></a>

### IngestJob



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| message_version | [int32](#int32) |  | To make it easier to use a new message format later |
| file_id | [string](#string) |  | A unique ID we generate for the file |
| job_id | [string](#string) |  | A unique ID we generate for the ingestion job |
| start_step | [FileStep](#com-cognite-seismic-FileStep) |  | [optional] Selected step to start ingestion. Leave blank to start from last completed step. More details on IngestFileRequest message description |
| target_tier_name | [string](#string) |  | Target storage tier to ingest file in. Tier names are tenant-specific. By default, if this field is empty, the file will be loaded in a bigtable-based trace store. |





 

 

 

 



<a name="cognite_seismic_protos_types-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/types.proto
Messages for types used in ingestion and query services in Seismic Datastore in Cognite Data Fusion


<a name="com-cognite-seismic-CRS"></a>

### CRS



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| crs | [string](#string) |  |  |






<a name="com-cognite-seismic-Coordinate"></a>

### Coordinate
Basic type representing (x,y) coordinate in the given CRS


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| crs | [string](#string) |  | The Coordinate Reference System of the coordinate. Generally should be an EPSG code including the EPSG: prefix, for example `EPSG:23031` |
| x | [float](#float) |  | The x value of the coordinate |
| y | [float](#float) |  | The y value of the coordinate |






<a name="com-cognite-seismic-CoverageParameters"></a>

### CoverageParameters
Parameters for requesting coverage of survey


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [optional] If CRS provided converts coverage to given CRS. Otherwise, will return in the survey&#39;s original CRS |
| in_wkt | [bool](#bool) |  | set this to true to return in WKT format. Otherwise, response will be in geojson format by default |






<a name="com-cognite-seismic-CustomSurveyCoverage"></a>

### CustomSurveyCoverage
Customer-provided custom coverage for surveys


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| custom_coverage | [Geometry](#com-cognite-seismic-Geometry) |  | Overrides survey coverage with the provided custom coverage geometry |
| no_custom_coverage | [CustomSurveyCoverage.NoCustomCoverage](#com-cognite-seismic-CustomSurveyCoverage-NoCustomCoverage) |  | Specifies that no custom coverage is provided, so survey coverage is computed from the seismicstores in the survey |






<a name="com-cognite-seismic-CustomSurveyCoverage-NoCustomCoverage"></a>

### CustomSurveyCoverage.NoCustomCoverage







<a name="com-cognite-seismic-DeduceFromTraces"></a>

### DeduceFromTraces
Have the seismic service try to deduce the affine transformation for each file by
reading trace coordinates






<a name="com-cognite-seismic-DoubleTraceCoordinates"></a>

### DoubleTraceCoordinates
Correlated grid indices and coordinates


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [int32](#int32) |  | The inline number. Within a 3D survey, a inline represents a seismic line parallel to the direction in which the data was adquired. |
| xline | [int32](#int32) |  | The xline number. Within a 3D survey, a xline represents a seismic line perpendicular to the direction in which the data was adquired. |
| x | [float](#float) |  | The x value of the coordinate |
| y | [float](#float) |  | The y value of the coordinate |






<a name="com-cognite-seismic-ExternalId"></a>

### ExternalId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| external_id | [string](#string) |  |  |






<a name="com-cognite-seismic-File"></a>

### File
File or dataset or cube derived from a single SEG-Y file


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| metadata | [File.MetadataEntry](#com-cognite-seismic-File-MetadataEntry) | repeated |  |
| is_temporary | [bool](#bool) |  |  |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  |  |






<a name="com-cognite-seismic-File-MetadataEntry"></a>

### File.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-GeoJson"></a>

### GeoJson
The GeoJSON format (&lt;a href=&#34;https://tools.ietf.org/html/rfc7946&#34;&gt;RFC 7946&lt;/a&gt;)
Supported geometry: Point, MultiPoint, LineString, MultiLineString, Polygon, MultiPolygon, and GeometryCollection.
Example:
&lt;pre&gt;{
   &#34;type&#34;: &#34;Point&#34;,
   &#34;coordinates&#34;: [100.0, 0.0]
}&lt;/pre&gt;


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| json | [google.protobuf.Struct](#google-protobuf-Struct) |  |  |






<a name="com-cognite-seismic-Geometry"></a>

### Geometry
Geometry can be specified using either wkt or geoJSON. CRS is always required.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| crs | [CRS](#com-cognite-seismic-CRS) |  | required |
| wkt | [Wkt](#com-cognite-seismic-Wkt) |  |  |
| geo | [GeoJson](#com-cognite-seismic-GeoJson) |  |  |






<a name="com-cognite-seismic-Identifier"></a>

### Identifier
Specify either id or name to find a file or survey.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |






<a name="com-cognite-seismic-LineBasedRectangle"></a>

### LineBasedRectangle
Range of inline and crossline indices defining a 2D region


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| top_left | [PositionQuery](#com-cognite-seismic-PositionQuery) |  |  |
| bottom_right | [PositionQuery](#com-cognite-seismic-PositionQuery) |  |  |






<a name="com-cognite-seismic-LineDescriptor"></a>

### LineDescriptor



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| max | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| step | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |






<a name="com-cognite-seismic-LineRange"></a>

### LineRange
Object to store the line range. From and to are optional


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| from_line | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| to_line | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |






<a name="com-cognite-seismic-LineSelect"></a>

### LineSelect
Specify either inline OR crossline


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [int32](#int32) |  | The inline number. Within a 3D survey, a inline represents a seismic line parallel to the direction in which the data was adquired. |
| xline | [int32](#int32) |  | The xline number. Within a 3D survey, a xline represents a seismic line perpendicular to the direction in which the data was adquired. |






<a name="com-cognite-seismic-P6Transformation"></a>

### P6Transformation
Specify the transformation by an origin point and the crossline azimuth
Format inspired by IOGP guidance note 373-7-2 section 2.3.2.4.
https://ge0mlib.com/papers/Guide/IOGP/373-07-2-1_2017.pdf


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| handedness | [Handedness](#com-cognite-seismic-Handedness) |  |  |
| origin | [DoubleTraceCoordinates](#com-cognite-seismic-DoubleTraceCoordinates) |  | A point in the grid |
| iline_bin_width | [float](#float) |  | The bin width along the inline axis |
| xline_bin_width | [float](#float) |  | The bin width along the crossline axis |
| xline_azimuth | [float](#float) |  | Map bearing of the crossline axis in clockwise degrees from north |
| iline_bin_inc | [int32](#int32) |  | Inline increment corresponding to a bin |
| xline_bin_inc | [int32](#int32) |  | Crossline increment corresponding to a bin |






<a name="com-cognite-seismic-PositionQuery"></a>

### PositionQuery
Point defined by its inline and crossline indices


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [int32](#int32) |  | The inline number. Within a 3D survey, a inline represents a seismic line parallel to the direction in which the data was adquired. |
| xline | [int32](#int32) |  | The xline number. Within a 3D survey, a xline represents a seismic line perpendicular to the direction in which the data was adquired. |






<a name="com-cognite-seismic-Project"></a>

### Project



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| alias | [string](#string) |  |  |






<a name="com-cognite-seismic-SlabTrace"></a>

### SlabTrace
Wrapper over Trace type that additionally provide information about the range of z values
included in the trace.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace | [Trace](#com-cognite-seismic-Trace) |  |  |
| z_from | [int32](#int32) |  |  |
| z_to | [int32](#int32) |  |  |






<a name="com-cognite-seismic-SurfacePoint"></a>

### SurfacePoint
Basic type to represent a point in a surface defined by a horizontal grid
Used in horizontal slice queries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [int32](#int32) |  | The inline number. Within a 3D survey, a inline represents a seismic line parallel to the direction in which the data was adquired. |
| xline | [int32](#int32) |  | The xline number. Within a 3D survey, a xline represents a seismic line perpendicular to the direction in which the data was adquired. |
| value | [float](#float) |  |  |






<a name="com-cognite-seismic-Survey"></a>

### Survey
A survey represents a collection of files in the same area


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Survey ID |
| name | [string](#string) |  | Survey name |
| metadata | [Survey.MetadataEntry](#com-cognite-seismic-Survey-MetadataEntry) | repeated |  |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  | Survey external ID |
| crs | [CRS](#com-cognite-seismic-CRS) |  | The Coordinate Reference System of the survey |
| grid_transformation | [SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  |  |
| custom_coverage | [CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  |  |






<a name="com-cognite-seismic-Survey-MetadataEntry"></a>

### Survey.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-SurveyGridTransformation"></a>

### SurveyGridTransformation
Specify the affine transformation between line indices and coordinates


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| p6_transformation | [P6Transformation](#com-cognite-seismic-P6Transformation) |  |  |
| trace_corners | [TraceCorners](#com-cognite-seismic-TraceCorners) |  |  |
| deduce_from_traces | [DeduceFromTraces](#com-cognite-seismic-DeduceFromTraces) |  |  |






<a name="com-cognite-seismic-Trace"></a>

### Trace
Basic type to represent a seismic trace
Used in trace, vertical slices and volume queries
Contains the samples and information on positioning
If a trace is an original trace in the file, it can optionally contain the trace header.
This is not valid for traces that are synthetically generated from interpolation.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace_header | [bytes](#bytes) |  | The binary SEGY trace header, if requested. |
| iline | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The inline number. Only populated for 3D seismics. |
| xline | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The xline number. Only populated for 3D seismics. |
| cdp | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The cdp number. Only populated for 2D seismics indexed by cdp. |
| shotpoint | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The shotpoint number. Only populated for 2D seismics indexed by shotpoint. |
| energy_source_point | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The energy source point number. Only populated for 2D seismics indexed by energy source point. |
| cdp_trace | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The cdp trace number. Only populated for prestack-migrated seismics indexed by cdp_trace. |
| offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | The offset number. Only populated for prestack-migrated seismics indexed by offset. |
| trace | [float](#float) | repeated | The underlying array of floats representing samples |
| coordinate | [Coordinate](#com-cognite-seismic-Coordinate) |  | The CDP X and Y coordinates of the trace. |






<a name="com-cognite-seismic-TraceCorners"></a>

### TraceCorners
Specify the transformation by giving the coordinates of three or more corners


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| corners | [DoubleTraceCoordinates](#com-cognite-seismic-DoubleTraceCoordinates) | repeated |  |






<a name="com-cognite-seismic-Wkt"></a>

### Wkt
Well-known text representation of geometry (&lt;a href=&#34;http://www.opengeospatial.org/standards/sfa&#34;&gt;WKT&lt;/a&gt;)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| geometry | [string](#string) |  |  |





 


<a name="com-cognite-seismic-FileStep"></a>

### FileStep


| Name | Number | Description |
| ---- | ------ | ----------- |
| REGISTER | 0 |  |
| INSERT_FILE_HEADERS | 1 |  |
| INSERT_TRACE_HEADERS | 2 |  |
| INSERT_DATA | 3 |  |
| COMPUTE_COVERAGE | 4 |  |
| COMPUTE_GRID | 5 |  |
| COMPUTE_TRACE_INDICES | 6 |  |
| DELETING | 254 |  |
| DELETE | 255 |  |



<a name="com-cognite-seismic-Handedness"></a>

### Handedness


| Name | Number | Description |
| ---- | ------ | ----------- |
| RIGHTHANDED | 0 | inline axis is 90 deg clockwise from crossline AKA EPSG code 9666 |
| LEFTHANDED | 1 | inline axis is 90 deg counterclockwise from crossline AKA EPSG code 1049 |



<a name="com-cognite-seismic-IngestionSource"></a>

### IngestionSource


| Name | Number | Description |
| ---- | ------ | ----------- |
| INVALID_SOURCE | 0 |  |
| FILE_SOURCE | 1 |  |
| TRACE_WRITER | 2 | TraceWriter |



<a name="com-cognite-seismic-InterpolationMethod"></a>

### InterpolationMethod


| Name | Number | Description |
| ---- | ------ | ----------- |
| NEAREST_TRACE | 0 |  |
| INVERSE_DISTANCE_WEIGHTING | 1 |  |



<a name="com-cognite-seismic-JobStatus"></a>

### JobStatus


| Name | Number | Description |
| ---- | ------ | ----------- |
| NONE | 0 |  |
| QUEUED | 1 |  |
| IN_PROGRESS | 2 |  |
| SUCCESS | 3 |  |
| FAILED | 4 |  |
| TIMEOUT | 5 |  |


 

 

 



<a name="cognite_seismic_protos_experimental_experimental_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/experimental/experimental_service.proto


 

 

 


<a name="com-cognite-seismic-experimental-ExperimentalAPI"></a>

### ExperimentalAPI
A service for experimental features.
Should only be enabled on greenfield.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|

 



<a name="cognite_seismic_protos_experimental_experimental_service_messages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/experimental/experimental_service_messages.proto


 

 

 

 



<a name="cognite_seismic_protos_ingest_service_messages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/ingest_service_messages.proto
Messages from the ingestion service of Seismic Datastore in Cognite Data Fusion


<a name="com-cognite-seismic-DeleteFileRequest"></a>

### DeleteFileRequest
[Example]
{&#34;file&#34;: {&#34;id&#34;: &#34;97305892-d622-4425-8530-3029b740842e&#34;} }


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a file previously registered with /RegisterFile |
| keep_registered | [bool](#bool) |  | If set to true, will delete contents of file (undo the ingestion), but keep the file registered. If set to false, will completely remove the file from database. If no option is set, default is false |






<a name="com-cognite-seismic-DeleteSurveyRequest"></a>

### DeleteSurveyRequest
[Example]
{&#34;survey&#34;: {&#34;name&#34;: &#34;survey_name&#34;} }


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a survey previously registered with /RegisterSurvey |






<a name="com-cognite-seismic-EditFileAccessRequest"></a>

### EditFileAccessRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a file |
| project | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a project |
| add | [bool](#bool) |  | If neither add or remove are set, or if both are set to true, add will be assumed

Add project access to this file |
| remove | [bool](#bool) |  | Remove project access from this file |






<a name="com-cognite-seismic-EditFileRequest"></a>

### EditFileRequest
[Example]
{&#34;file&#34;: {&#34;id&#34;: &#34;97305892-d622-4425-8530-3029b740842e&#34;} }


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a file previously registered with /RegisterFile |
| path | [string](#string) |  | [optional] New path. Example: &#34;gs://cognite-seismic-eu/samples/&#34; |
| name | [string](#string) |  | [optional] New (unique) filename. Example: &#34;DN1302M03R16_MERGED_KPSDM_00-32_DEG_T.sgy&#34; |
| metadata | [EditFileRequest.MetadataEntry](#com-cognite-seismic-EditFileRequest-MetadataEntry) | repeated | [optional] New metadata |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [optional] Official name of the CRS used. Example: &#34;EPSG:23031&#34; |
| inline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Inline number field in the trace headers. Defaults to 189 as per the SEG-Y rev1 specification |
| crossline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Crossline number field in the trace headers. Defaults to 193 as per the SEG-Y rev1 specification |
| cdp_x_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] X coordinate of ensemble (CDP) position in trace headers. Defaults to 181 as per the SEG-Y rev1 specification |
| cdp_y_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Y coordinate of ensemble (CDP) position in trace headers. Defaults to 185 as per the SEG-Y rev1 specification |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] An external identifier - matches service contract field |
| source_group_scalar_override | [google.protobuf.FloatValue](#google-protobuf-FloatValue) |  | [optional] Multiplier for CDP-X and CDP-Y values, overrides scalar factor obtained from trace header. Note that this is a floating point multiplier used directly to scale CDP-X and CDP-Y values, and it is not interpreted in the manner of the source group scalar trace header field in the SEG-Y specification. That is: To divide by 100, specify 0.01, not -100. Negative values and values greater than 1 are not permitted. To remove the override from a file where an override has previously been set, set the source_group_scalar_override to 0 or NaN. The next ingestion processing of a file will then use the source group scalar values found in trace headers. |






<a name="com-cognite-seismic-EditFileRequest-MetadataEntry"></a>

### EditFileRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-EditFileResponse"></a>

### EditFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File](#com-cognite-seismic-File) |  |  |
| path | [string](#string) |  |  |
| crs | [CRS](#com-cognite-seismic-CRS) |  |  |
| inline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Inline number field in the trace headers. Defaults to 189 as per the SEG-Y rev1 specification |
| crossline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Crossline number field in the trace headers. Defaults to 193 as per the SEG-Y rev1 specification |
| cdp_x_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] X coordinate of ensemble (CDP) position in trace headers. Defaults to 181 as per the SEG-Y rev1 specification |
| cdp_y_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Y coordinate of ensemble (CDP) position in trace headers. Defaults to 185 as per the SEG-Y rev1 specification |
| source_group_scalar_override | [google.protobuf.FloatValue](#google-protobuf-FloatValue) |  | [optional] Multiplier for CDP-X and CDP-Y values, overrides scalar factor obtained from trace header |






<a name="com-cognite-seismic-EditSurveyRequest"></a>

### EditSurveyRequest
[Example]
{&#34;survey&#34;: {&#34;id&#34;: &#34;97305892-d622-4425-8530-3029b740842e&#34;}, &#34;name&#34;: &#34;new name&#34;}


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a survey previously registered with /RegisterSurvey |
| name | [string](#string) |  | [optional] New name |
| metadata | [EditSurveyRequest.MetadataEntry](#com-cognite-seismic-EditSurveyRequest-MetadataEntry) | repeated | [optional] New metadata |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] External id matching service contract type |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [optional] new CRS used by all members |
| grid_transformation | [SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  | [optional] Affine transformation from grid bins to coordinates |
| custom_coverage | [CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  | [optional] Customer-provided custom survey coverage |






<a name="com-cognite-seismic-EditSurveyRequest-MetadataEntry"></a>

### EditSurveyRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-EditSurveyResponse"></a>

### EditSurveyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Survey](#com-cognite-seismic-Survey) |  |  |






<a name="com-cognite-seismic-IngestFileRequest"></a>

### IngestFileRequest
[Example]
{&#34;file&#34;: {&#34;name&#34;: &#34;ABP16M03-FMIG-OBC-PSDM-FULL-STACK-T.MIG_FIN.POST_STACK..JS-021837.segy&#34;} }


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a file previously registered with /RegisterFile |
| start_step | [FileStep](#com-cognite-seismic-FileStep) |  | [optional] Selected step to start ingestion. Leave blank to start from last completed step. [Accepted values] 1 -- insert binary and text headers 2 -- insert trace headers 3 -- insert trace data 4 -- compute coverage polygon and additional metadata (trace count, valid lines, etc) 6 -- insert trace offset indices [Use cases] Usual ingestion: If the last successful step was 0 (REGISTER), the file will be fully ingested regardless of start_step Completing a failed ingestion: If the last successful step was 3 (INSERT_DATA), and no start step is selected, only coverage will be computed. Previously ingested headers and traces will be preserved in this case. Forcing reingestion: If start_step is 1 (INSERT_FILE_HEADERS), regardless of previous ingestion status, all headers and data will be deleted and the whole file will be forcefully reingested Forcing a single step to be rerun: If the file is ingested (last step is COMPUTE_COVERAGE), by using start_step = 4 (COMPUTE_COVERAGE), for example, only coverage will be computed while headers and traces will be preserved |
| target_storage_tier_name | [string](#string) |  | [optional as of 2020-11-01, will be required at some later time] Target storage tier for this file. If empty a bigtable-based storage will be used.

A storage tier is a defined facility for storing the trace data associated with a seismic volume. The default storage facility is based on Cloud Bigtable, but it is also possible to leave trace data stored in SEG-Y files in Cloud Storage, only retaining a compact index of file data in fast storage to facilitate retrieval of data from Cloud Storage in a performant manner.

[Accepted values] Accepted values are defined by the tenant configuration, and allow for optimizing tradeoffs between storage cost, retrieval performance, numeric precision and sampling.

Note that currently only one storage tier per trace store is supported, so ingesting an already ingested file will result in the file&#39;s data being removed from the previously active storage tier. |






<a name="com-cognite-seismic-IngestFileResponse"></a>

### IngestFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job_id | [string](#string) |  | job id that can be used to query for status |
| file_id | [string](#string) |  |  |






<a name="com-cognite-seismic-IngestionLog"></a>

### IngestionLog



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [string](#string) |  |  |
| log_line | [string](#string) |  |  |






<a name="com-cognite-seismic-ListFileAccessRequest"></a>

### ListFileAccessRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a file |






<a name="com-cognite-seismic-ProjectListResponse"></a>

### ProjectListResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| project | [Project](#com-cognite-seismic-Project) | repeated |  |






<a name="com-cognite-seismic-RegisterFileRequest"></a>

### RegisterFileRequest
[Example]
{
&#34;survey&#34;: {&#34;name&#34;: &#34;surveyname&#34;},
&#34;name&#34;: &#34;ABP16M03-FMIG-OBC-PSDM-FULL-STACK-T.MIG_FIN.POST_STACK..J.segy&#34;,
&#34;path&#34;: &#34;gs://cognite-seismic-eu/samples/from-diskos-disks&#34;,
&#34;crs&#34;: { &#34;crs&#34;: &#34;EPSG:23031&#34;}
}


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-Identifier) |  | [required] Either name or id of a survey previously registered with /RegisterSurvey |
| path | [string](#string) |  | [required if file is not synthetic] Path including protocol, bucket and directory structure. Example: &#34;gs://cognite-seismic-eu/samples/&#34; |
| name | [string](#string) |  | [required] Unique filename including extension. Example: &#34;DN1302M03R16_MERGED_KPSDM_00-32_DEG_T.sgy&#34;. The name must be unique across buckets and can be used to identify this file in query requests |
| metadata | [RegisterFileRequest.MetadataEntry](#com-cognite-seismic-RegisterFileRequest-MetadataEntry) | repeated | [optional] |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [required] Official name of the CRS used. Example: &#34;EPSG:23031&#34; |
| is_temporary | [google.protobuf.BoolValue](#google-protobuf-BoolValue) |  | [optional] tells whether file is temporary (writeable) or not. False by default |
| inline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Inline number field in the trace headers. Defaults to 189 as per the SEG-Y rev1 specification |
| crossline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Crossline number field in the trace headers. Defaults to 193 as per the SEG-Y rev1 specification |
| cdp_x_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] X coordinate of ensemble (CDP) position in trace headers. Defaults to 181 as per the SEG-Y rev1 specification |
| cdp_y_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | [optional] Y coordinate of ensemble (CDP) position in trace headers. Defaults to 185 as per the SEG-Y rev1 specification |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] An external identifier - matches service contract field |
| source_group_scalar_override | [google.protobuf.FloatValue](#google-protobuf-FloatValue) |  | [optional] Multiplier for CDP-X and CDP-Y values, overrides scalar factor obtained from trace header. Must be in the range (0,1]. Note that this is a floating point multiplier used directly to scale CDP-X and CDP-Y values, and it is not interpreted in the manner of the source group scalar trace header field in the SEG-Y specification. That is: To divide by 100, specify 0.01, not -100. Negative values, 0 and values greater than 1 are not permitted when registering a file, although 0 may be used in the EditFile call to unset this field. |






<a name="com-cognite-seismic-RegisterFileRequest-MetadataEntry"></a>

### RegisterFileRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-RegisterFileResponse"></a>

### RegisterFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File](#com-cognite-seismic-File) |  |  |






<a name="com-cognite-seismic-RegisterSurveyRequest"></a>

### RegisterSurveyRequest
[Example]
{&#34;name&#34;: &#34;surveyname&#34;, &#34;metadata&#34;: {&#34;location&#34;: &#34;underwater&#34;}, &#34;external_id&#34;: &#34;surveyname-external&#34; }


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | [required] |
| metadata | [RegisterSurveyRequest.MetadataEntry](#com-cognite-seismic-RegisterSurveyRequest-MetadataEntry) | repeated | [optional] |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [optional] new CRS used by all members |
| grid_transformation | [SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  | [optional] Affine transformation from grid bins to coordinates |
| custom_coverage | [CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  |  |






<a name="com-cognite-seismic-RegisterSurveyRequest-MetadataEntry"></a>

### RegisterSurveyRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-RegisterSurveyResponse"></a>

### RegisterSurveyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Survey](#com-cognite-seismic-Survey) |  |  |






<a name="com-cognite-seismic-StatusRequest"></a>

### StatusRequest
[Example]
{&#34;job_id&#34;: &#34;1e9a4f9b-7c15-44dd-bbbb-e9e9fb83e401&#34;}


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job_id | [string](#string) |  |  |
| file_id | [string](#string) |  |  |
| seismicstore_id | [int64](#int64) |  |  |






<a name="com-cognite-seismic-StatusResponse"></a>

### StatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [JobStatus](#com-cognite-seismic-JobStatus) |  |  |
| message | [string](#string) |  |  |
| started_at | [string](#string) |  |  |
| updated_at | [string](#string) |  |  |
| logs | [IngestionLog](#com-cognite-seismic-IngestionLog) | repeated |  |






<a name="com-cognite-seismic-StoreTraceRequest"></a>

### StoreTraceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| iline | [int32](#int32) |  |  |
| xline | [int32](#int32) |  |  |
| x | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| y | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| trace | [float](#float) | repeated |  |
| raw_header | [bytes](#bytes) |  |  |





 

 

 

 



<a name="cognite_seismic_protos_query_service_messages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/query_service_messages.proto
Messages from the query service of Seismic Datastore in Cognite Data Fusion


<a name="com-cognite-seismic-AvailableLines"></a>

### AvailableLines



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| lines | [int32](#int32) | repeated |  |






<a name="com-cognite-seismic-BinaryHeader"></a>

### BinaryHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_id | [string](#string) |  | DEPRECATED: This field will always be empty |
| traces | [int32](#int32) |  |  |
| trace_data_type | [int32](#int32) |  |  |
| fixed_length_traces | [int32](#int32) |  |  |
| segy_revision | [int32](#int32) |  |  |
| auxtraces | [int32](#int32) |  |  |
| interval | [int32](#int32) |  |  |
| interval_original | [int32](#int32) |  |  |
| samples | [int32](#int32) |  |  |
| samples_original | [int32](#int32) |  |  |
| ensemble_fold | [int32](#int32) |  |  |
| vertical_sum | [int32](#int32) |  |  |
| trace_type_sorting_code | [int32](#int32) |  |  |
| sweep_type_code | [int32](#int32) |  |  |
| sweep_frequency_start | [int32](#int32) |  |  |
| sweep_frequency_end | [int32](#int32) |  |  |
| sweep_length | [int32](#int32) |  |  |
| sweep_channel | [int32](#int32) |  |  |
| sweep_taper_start | [int32](#int32) |  |  |
| sweep_taper_end | [int32](#int32) |  |  |
| sweep_taper_type | [int32](#int32) |  |  |
| correlated_traces | [int32](#int32) |  |  |
| amplitude_recovery | [int32](#int32) |  |  |
| original_measurement_system | [int32](#int32) |  |  |
| impulse_signal_polarity | [int32](#int32) |  |  |
| vibratory_polarity_code | [int32](#int32) |  |  |
| raw_header | [bytes](#bytes) |  |  |






<a name="com-cognite-seismic-CoordinateQuery"></a>

### CoordinateQuery
Point defined by its x and y coordinates


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| x | [float](#float) |  |  |
| y | [float](#float) |  |  |






<a name="com-cognite-seismic-CoordinateTraceQueryRequest"></a>

### CoordinateTraceQueryRequest
Request a single trace from a file by coordinates (x AND y). If x and y don&#39;t fall in the coordinates of a trace,
will return the closest trace to it.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| coordinates | [CoordinateQuery](#com-cognite-seismic-CoordinateQuery) |  |  |
| max_radius | [float](#float) |  | only return traces if closer than this to the actual point in the file |
| include_trace_header | [bool](#bool) |  |  |






<a name="com-cognite-seismic-DataCoverageResponse"></a>

### DataCoverageResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| polygon | [Geometry](#com-cognite-seismic-Geometry) |  |  |






<a name="com-cognite-seismic-FileCoverageRequest"></a>

### FileCoverageRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the file |
| crs | [CRS](#com-cognite-seismic-CRS) |  | [optional] If CRS provided converts coverage to given CRS. Otherwise, will return in the file&#39;s original CRS |
| in_wkt | [bool](#bool) |  | set this to true to return in WKT format. Otherwise, response will be in geojson format by default |






<a name="com-cognite-seismic-FileLineQueryRequest"></a>

### FileLineQueryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the file |
| line | [int32](#int32) |  | number of the selected inline or crossline in the file |






<a name="com-cognite-seismic-FileQueryRequest"></a>

### FileQueryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the file |






<a name="com-cognite-seismic-GeometryCubeRequest"></a>

### GeometryCubeRequest
Request a volume of traces from a file with coordinates inside an arbitrary polygon


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| geometry | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| include_trace_header | [bool](#bool) |  |  |






<a name="com-cognite-seismic-GeometrySliceQueryRequest"></a>

### GeometrySliceQueryRequest
Request a slice of traces from a file by coordinates of start and end of an arbitrary line


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| arbitrary_line | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| interpolation_method | [InterpolationMethod](#com-cognite-seismic-InterpolationMethod) |  |  |






<a name="com-cognite-seismic-GeometryTimeSliceQueryRequest"></a>

### GeometryTimeSliceQueryRequest
Request a time slice from a file and filter by coordinates inside an arbitrary polygon


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| geometry | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| z | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | either time or depth according to the file |






<a name="com-cognite-seismic-GetBinaryHeaderResponse"></a>

### GetBinaryHeaderResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| meta | [BinaryHeader](#com-cognite-seismic-BinaryHeader) |  |  |






<a name="com-cognite-seismic-GetFileResponse"></a>

### GetFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File](#com-cognite-seismic-File) |  |  |
| crs | [string](#string) |  |  |
| path | [string](#string) |  |  |
| survey_name | [string](#string) |  |  |
| last_step | [string](#string) |  |  |
| inline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| crossline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| cdp_x_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| cdp_y_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| source_group_scalar_override | [google.protobuf.FloatValue](#google-protobuf-FloatValue) |  |  |






<a name="com-cognite-seismic-GetSurveyResponse"></a>

### GetSurveyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Survey](#com-cognite-seismic-Survey) |  |  |
| files | [File](#com-cognite-seismic-File) | repeated |  |
| polygon | [Geometry](#com-cognite-seismic-Geometry) |  |  |






<a name="com-cognite-seismic-GetTextHeaderResponse"></a>

### GetTextHeaderResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| meta | [TextHeader](#com-cognite-seismic-TextHeader) |  |  |






<a name="com-cognite-seismic-HeaderFileQueryRequest"></a>

### HeaderFileQueryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the file |
| include_raw_header | [bool](#bool) |  | set to true to include the raw header in the response (default: false) |






<a name="com-cognite-seismic-KeyValueFilter"></a>

### KeyValueFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-LineBasedVolume"></a>

### LineBasedVolume
Range of inline, crossline and time indices defining a volume


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| xline | [LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| z | [LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-LineCubeRequest"></a>

### LineCubeRequest
Request a volume of traces from a file by range of inlines and crosslines


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| rectangle | [LineBasedRectangle](#com-cognite-seismic-LineBasedRectangle) |  |  |
| include_trace_header | [bool](#bool) |  |  |






<a name="com-cognite-seismic-LineRangeResponse"></a>

### LineRangeResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inline | [LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| xline | [LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| trace_value_range | [TraceValueRange](#com-cognite-seismic-TraceValueRange) |  |  |
| trace_sample_count | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |






<a name="com-cognite-seismic-LineSlabRequest"></a>

### LineSlabRequest
Request a volume below and above a time slice from a file and filter by range of inlines and crosslines


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| rectangle | [LineBasedRectangle](#com-cognite-seismic-LineBasedRectangle) |  |  |
| constant | [int32](#int32) |  |  |
| surface | [Surface](#com-cognite-seismic-Surface) |  |  |
| n_above | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |
| n_below | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  |  |






<a name="com-cognite-seismic-LineSliceQueryRequest"></a>

### LineSliceQueryRequest
Request a slice of traces from a file by index (inline OR crossline), and optionally specify min and max range


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| line | [LineSelect](#com-cognite-seismic-LineSelect) |  |  |
| include_trace_header | [bool](#bool) |  |  |
| range | [LineRange](#com-cognite-seismic-LineRange) |  |  |






<a name="com-cognite-seismic-LineTraceQueryRequest"></a>

### LineTraceQueryRequest
Request a single trace from a file by index (inline AND crossline)


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| position | [PositionQuery](#com-cognite-seismic-PositionQuery) |  |  |
| include_trace_header | [bool](#bool) |  |  |
| include_trace_coordinates | [bool](#bool) |  |  |
| include_trace_data | [bool](#bool) |  |  |






<a name="com-cognite-seismic-ListFilesResponse"></a>

### ListFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| files | [File](#com-cognite-seismic-File) | repeated |  |






<a name="com-cognite-seismic-ListSurveysQueryRequest"></a>

### ListSurveysQueryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| list_files | [bool](#bool) |  | set to true to list the survey files in the response (default: false) |
| include_metadata | [bool](#bool) |  | set to true to include metadata in the response (default: false) |
| include_grid_transformation | [bool](#bool) |  | set to true to include the grid transformation in the response, if available (default: false) |
| include_custom_coverage | [bool](#bool) |  | set to true to include the custom survey coverage in the response, if available (default: false) |






<a name="com-cognite-seismic-MetadataFilter"></a>

### MetadataFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filter | [MetadataFilter.FilterEntry](#com-cognite-seismic-MetadataFilter-FilterEntry) | repeated |  |






<a name="com-cognite-seismic-MetadataFilter-FilterEntry"></a>

### MetadataFilter.FilterEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-NavigationPolygonRequest"></a>

### NavigationPolygonRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the survey |






<a name="com-cognite-seismic-PathQueryRequest"></a>

### PathQueryRequest
Request a pseudo-trace (sequence of values) representing the values for the described path in a file


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| geometry | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| include_trace_header | [bool](#bool) |  |  |






<a name="com-cognite-seismic-SearchSurveyRequest"></a>

### SearchSurveyRequest
Request to search surveys inside a polygon or by metadata


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| polygon | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| survey_metadata | [MetadataFilter](#com-cognite-seismic-MetadataFilter) |  |  |
| file_metadata | [MetadataFilter](#com-cognite-seismic-MetadataFilter) |  |  |
| include_metadata | [bool](#bool) |  |  |
| include_grid_transformation | [bool](#bool) |  |  |
| include_custom_coverage | [bool](#bool) |  |  |






<a name="com-cognite-seismic-SegYQueryRequest"></a>

### SegYQueryRequest
Filter the area included in the SEGY file by a polygon defined either by spatial coordinates
or by a set of inline and crossline indices


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| polygon | [Geometry](#com-cognite-seismic-Geometry) |  |  |
| lines | [LineBasedRectangle](#com-cognite-seismic-LineBasedRectangle) |  |  |






<a name="com-cognite-seismic-SegYQueryResponse"></a>

### SegYQueryResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  |  |






<a name="com-cognite-seismic-Surface"></a>

### Surface
Range of z_values to use in time/depth slice queries


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| z_values | [int32](#int32) | repeated |  |






<a name="com-cognite-seismic-SurveyQueryRequest"></a>

### SurveyQueryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-Identifier) |  | name or id of the survey |
| list_files | [bool](#bool) |  | set to true to list the survey files in the response (default: false) |
| include_metadata | [bool](#bool) |  | set to true to include metadata in the response (default: false) |
| include_coverage | [CoverageParameters](#com-cognite-seismic-CoverageParameters) |  | set this field to include coverage in the response (default: false) |
| include_grid_transformation | [bool](#bool) |  | set to true to include the grid transformation in the response, if available (default: false) |
| include_custom_coverage | [bool](#bool) |  | set to true to include the custom survey coverage in the response, if available (default: false) |






<a name="com-cognite-seismic-SurveyWithFiles"></a>

### SurveyWithFiles



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| name | [string](#string) |  |  |
| metadata | [SurveyWithFiles.MetadataEntry](#com-cognite-seismic-SurveyWithFiles-MetadataEntry) | repeated |  |
| files | [File](#com-cognite-seismic-File) | repeated |  |
| external_id | [ExternalId](#com-cognite-seismic-ExternalId) |  |  |
| crs | [CRS](#com-cognite-seismic-CRS) |  |  |
| grid_transformation | [SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  |  |
| custom_coverage | [CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  |  |






<a name="com-cognite-seismic-SurveyWithFiles-MetadataEntry"></a>

### SurveyWithFiles.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-SurveyWithFilesResponse"></a>

### SurveyWithFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| surveys | [SurveyWithFiles](#com-cognite-seismic-SurveyWithFiles) | repeated |  |






<a name="com-cognite-seismic-TextHeader"></a>

### TextHeader



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_id | [string](#string) |  | DEPRECATED: This field will always be empty |
| header | [string](#string) |  |  |
| raw_header | [string](#string) |  |  |






<a name="com-cognite-seismic-TraceValueRange"></a>

### TraceValueRange
The minimum and maximum values of all traces in a specific file


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| min_value | [float](#float) |  |  |
| max_value | [float](#float) |  |  |






<a name="com-cognite-seismic-VolumeRequest"></a>

### VolumeRequest
Request a volume from a file by range of inlines, crosslines and time


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-Identifier) |  |  |
| volume | [LineBasedVolume](#com-cognite-seismic-LineBasedVolume) |  |  |
| include_trace_header | [bool](#bool) |  |  |





 

 

 

 



<a name="cognite_seismic_protos_v1_seismic_service_datatypes-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/v1/seismic_service_datatypes.proto
Messages that describe data types used by Seismic Datastore in Cognite Data Fusion


<a name="com-cognite-seismic-v1-BinaryHeader"></a>

### BinaryHeader
A representation of binary headers used to create or edit existing headers. BinaryHeader FIELDS contains the list of valid fields. to set after the object is constructed.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_id | [string](#string) |  | DEPRECATED: This field will always be empty |
| traces | [int32](#int32) |  |  |
| trace_data_type | [int32](#int32) |  |  |
| fixed_length_traces | [int32](#int32) |  |  |
| segy_revision | [int32](#int32) |  |  |
| auxtraces | [int32](#int32) |  |  |
| interval | [int32](#int32) |  |  |
| interval_original | [int32](#int32) |  |  |
| samples | [int32](#int32) |  |  |
| samples_original | [int32](#int32) |  |  |
| ensemble_fold | [int32](#int32) |  |  |
| vertical_sum | [int32](#int32) |  |  |
| trace_type_sorting_code | [int32](#int32) |  |  |
| sweep_type_code | [int32](#int32) |  |  |
| sweep_frequency_start | [int32](#int32) |  |  |
| sweep_frequency_end | [int32](#int32) |  |  |
| sweep_length | [int32](#int32) |  |  |
| sweep_channel | [int32](#int32) |  |  |
| sweep_taper_start | [int32](#int32) |  |  |
| sweep_taper_end | [int32](#int32) |  |  |
| sweep_taper_type | [int32](#int32) |  |  |
| correlated_traces | [int32](#int32) |  |  |
| amplitude_recovery | [int32](#int32) |  |  |
| original_measurement_system | [int32](#int32) |  |  |
| impulse_signal_polarity | [int32](#int32) |  |  |
| vibratory_polarity_code | [int32](#int32) |  |  |
| raw_header | [bytes](#bytes) |  |  |






<a name="com-cognite-seismic-v1-Coordinate"></a>

### Coordinate



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| x | [float](#float) |  | The x value of the coordinate |
| y | [float](#float) |  | The y value of the coordinate |






<a name="com-cognite-seismic-v1-CoverageSpec"></a>

### CoverageSpec



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| crs | [string](#string) |  | If crs is not specified (aka is blank), uses default crs from file |
| format | [CoverageSpec.Format](#com-cognite-seismic-v1-CoverageSpec-Format) |  |  |






<a name="com-cognite-seismic-v1-Filter"></a>

### Filter
Specify an individual filter.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key_value_exact_match | [KeyValueExactMatch](#com-cognite-seismic-v1-KeyValueExactMatch) |  |  |






<a name="com-cognite-seismic-v1-GeometryFilter"></a>

### GeometryFilter



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| geometry | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  |  |
| interpolation_method | [com.cognite.seismic.InterpolationMethod](#com-cognite-seismic-InterpolationMethod) |  | Only used for linear geometries in 3D |






<a name="com-cognite-seismic-v1-Identifier"></a>

### Identifier
Used to identify zero or one objects that may have an external id


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| external_id | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-KeyValueExactMatch"></a>

### KeyValueExactMatch
Matches when the key AND value are exact matches.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-LastModifiedFilter"></a>

### LastModifiedFilter
Specifies a last modified timestamp range to search.
Returned objects will satisfy all arguments that are not null.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| before | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | All returned objects will have a last_modified before this timestamp. |
| after | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | All returned objects will have a last_modified after this timestamp. |






<a name="com-cognite-seismic-v1-LineBasedExtent"></a>

### LineBasedExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| extents | [TraceExtent](#com-cognite-seismic-v1-TraceExtent) | repeated |  |






<a name="com-cognite-seismic-v1-LineBasedVolume"></a>

### LineBasedVolume



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| xline | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| z | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-LineRange"></a>

### LineRange



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inline | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| crossline | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-LineSelect"></a>

### LineSelect



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| iline | [int32](#int32) |  |  |
| xline | [int32](#int32) |  |  |






<a name="com-cognite-seismic-v1-MetadataFilter"></a>

### MetadataFilter
Specifying how to filter metadata. An object will be considered a match if it satisfies ALL filters.
All strings are case sensitive.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| filters | [Filter](#com-cognite-seismic-v1-Filter) | repeated |  |






<a name="com-cognite-seismic-v1-MinorLines"></a>

### MinorLines



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ranges | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) | repeated |  |






<a name="com-cognite-seismic-v1-OptionalMap"></a>

### OptionalMap
Used in edit messages to distinguish between an empty map, and a missing map


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| data | [OptionalMap.DataEntry](#com-cognite-seismic-v1-OptionalMap-DataEntry) | repeated |  |






<a name="com-cognite-seismic-v1-OptionalMap-DataEntry"></a>

### OptionalMap.DataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-Partition"></a>

### Partition
Represents partitions, used for granular access control


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | The unique internal id for this partition |
| external_id | [string](#string) |  | The external id of the partition |
| name | [string](#string) |  | The human-friendly name for this partition |
| seismics | [Seismic](#com-cognite-seismic-v1-Seismic) | repeated | DEPRECATED: This field will always be empty. Use seismic search by partition instead. |
| seismic_ids | [int64](#int64) | repeated | The list of ids of seismics that belong to this partition |
| last_modified | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | The last time this object was created or edited. |






<a name="com-cognite-seismic-v1-SearchSpec"></a>

### SearchSpec
Used to identify any number of objects, intended for any plural Read* endpoints. Set* endpoints should use Identifier.

Can search by id, name, or prefix.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  |  |
| id_string | [string](#string) |  | Surveys and files must have string format ids. Other objects can&#39;t use this. |
| external_id | [string](#string) |  | External ids only exist for partitions and seismics.

Exact match required |
| external_id_substring | [string](#string) |  |  |
| name | [string](#string) |  | Names exist for everything

An exact string match is required |
| name_substring | [string](#string) |  | Searches for names having this substring. |
| metadata | [MetadataFilter](#com-cognite-seismic-v1-MetadataFilter) |  | Filters by metadata. Currently only supported by Surveys. |
| geometry | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | Filters by intersection with a geometry. Currently only supported by Surveys. |






<a name="com-cognite-seismic-v1-SegyOverrides"></a>

### SegyOverrides
Metadata related to interpreting SEG-Y files.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the inline number field in the trace headers. Defaults to 189 as per the SEG-Y rev1 specification |
| crossline_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the crossline number field in the trace headers. Defaults to 193 as per the SEG-Y rev1 specification |
| cdp_x_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the X coordinate of ensemble (CDP) in trace headers. Defaults to 181 as per the SEG-Y rev1 specification |
| cdp_y_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the Y coordinate of ensemble (CDP) in trace headers. Defaults to 185 as per the SEG-Y rev1 specification |
| cdp_number_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the ensemble (CDP) number in trace headers. Defaults to 21 as per the SEG-Y rev1 specification |
| energy_source_point_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the energy source point in trace headers. Defaults to 17 as per the SEG-Y rev1 specification |
| shotpoint_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the shotpoint field in trace headers. Defaults to 197 as per the SEG-Y rev1 specification |
| cdp_trace_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the trace number within ensemble. Defaults to 21 as per the SEG-Y rev1 specification. |
| offset_header_offset | [google.protobuf.Int32Value](#google-protobuf-Int32Value) |  | Position of the &#39;offset&#39; field in the trace header. Defaults to 37 as per the SEG-Y rev1 specification. |
| source_group_scalar_override | [google.protobuf.FloatValue](#google-protobuf-FloatValue) |  | [optional] Multiplier for CDP-X and CDP-Y values, overrides scalar factor obtained from trace header. Note that this is a floating point multiplier used directly to scale CDP-X and CDP-Y values, and it is not interpreted in the manner of the source group scalar trace header field in the SEG-Y specification. That is: To divide by 100, specify 0.01, not -100. Negative values and values greater than 1 are not permitted. To remove the override from a file where an override has previously been set, set the source_group_scalar_override to 0 or NaN. The next ingestion processing of a file will then use the source group scalar values found in trace headers. |






<a name="com-cognite-seismic-v1-Seismic"></a>

### Seismic
A cutout of a seismic store


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | The unique internal id of the seismic. It is always present |
| external_id | [string](#string) |  | The external id of the seismic |
| name | [string](#string) |  | A non-unique name for the seismic. It is easily editable and is intended to be used as a human-friendly reference. |
| crs | [string](#string) |  | The Coordinate Reference System of the seismic |
| metadata | [Seismic.MetadataEntry](#com-cognite-seismic-v1-Seismic-MetadataEntry) | repeated | Any custom-defined metadata |
| text_header | [TextHeader](#com-cognite-seismic-v1-TextHeader) |  | The text header that corresponds to the seismic |
| binary_header | [BinaryHeader](#com-cognite-seismic-v1-BinaryHeader) |  | The binary header that corresponds to the seismic |
| line_range | [LineRange](#com-cognite-seismic-v1-LineRange) |  | Deprecated: Use the GetTraceBounds API call instead |
| volume_def | [VolumeDef](#com-cognite-seismic-v1-VolumeDef) |  | The VolumeDef describing the seismic |
| cutout | [SeismicCutout](#com-cognite-seismic-v1-SeismicCutout) |  | The cutout the seismic object was created with |
| extent | [SeismicExtent](#com-cognite-seismic-v1-SeismicExtent) |  | A description of the traces contained in the seismic |
| partition_id | [int64](#int64) |  | The id of the partition the seismic belongs to |
| seismicstore_id | [int64](#int64) |  | The id of the seismicstore the seismic is derived from. It is present only if agent has READ access and ALL scope |
| coverage | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | The coverage geometry for the seismic. |
| created_empty | [bool](#bool) |  | If true, this seismic was created empty (deprecated) |
| trace_count | [int64](#int64) |  | Provides an estimate of the number of traces contained within the seismic. |
| trace_header_fields | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) | repeated | The trace header fields that have been registered as keys for indexing. This will always match the trace header fields registered for the underlying seismic store. |
| dimensions | [Dimensions](#com-cognite-seismic-v1-Dimensions) |  | The underlying file&#39;s data dimensionality, either 2D or 3D This will always match the dimensionality for the underlying seismic store. |
| last_modified | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | The last time this object was created or edited. |
| seismic_data_type | [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType) |  | Whether this seismic object contains pre-stack or post-stack data. |






<a name="com-cognite-seismic-v1-Seismic-MetadataEntry"></a>

### Seismic.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-Seismic2dExtent"></a>

### Seismic2dExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace_key | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | Must be an applicable field for 2D |
| trace_ranges | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) | repeated | Range of header values to use |






<a name="com-cognite-seismic-v1-Seismic2dRange"></a>

### Seismic2dRange



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace_key | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | Must be an applicable field for 2D |
| trace_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-Seismic3dDef"></a>

### Seismic3dDef



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| major_header | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | Must be inline or crossline |
| minor_header | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | Must be inline or crossline, and different from major_header |
| lines | [Seismic3dDef.LinesEntry](#com-cognite-seismic-v1-Seismic3dDef-LinesEntry) | repeated |  |






<a name="com-cognite-seismic-v1-Seismic3dDef-LinesEntry"></a>

### Seismic3dDef.LinesEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [int32](#int32) |  |  |
| value | [MinorLines](#com-cognite-seismic-v1-MinorLines) |  |  |






<a name="com-cognite-seismic-v1-Seismic3dExtent"></a>

### Seismic3dExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rects | [Seismic3dRects](#com-cognite-seismic-v1-Seismic3dRects) |  |  |
| def | [Seismic3dDef](#com-cognite-seismic-v1-Seismic3dDef) |  |  |






<a name="com-cognite-seismic-v1-Seismic3dRect"></a>

### Seismic3dRect



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| inline_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |
| xline_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-Seismic3dRects"></a>

### Seismic3dRects



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| rects | [Seismic3dRect](#com-cognite-seismic-v1-Seismic3dRect) | repeated |  |






<a name="com-cognite-seismic-v1-SeismicCutout"></a>

### SeismicCutout



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| two_dee_extent | [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent) |  | Indicates that the seismic was requested with this 2D extent |
| three_dee_extent | [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent) |  | Indicates that the seismic was requested with this 3D extent (or an equivalent VolumeDef) |
| geometry | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | Indicates that the seismic was requested with this geometry |
| empty | [bool](#bool) |  | Indicates that the seismic was created empty |
| full | [bool](#bool) |  | Indicates that the seismic was created to cover the entire seismicstore |






<a name="com-cognite-seismic-v1-SeismicExtent"></a>

### SeismicExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| two_dee_extent | [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent) |  |  |
| three_dee_extent | [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent) |  |  |






<a name="com-cognite-seismic-v1-SeismicStore"></a>

### SeismicStore
Represents a seismic store.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [int64](#int64) |  | The unique internal id of the seismic store |
| name | [string](#string) |  | The unique name of the seismic store. Will become non-unique in the future, and `external_id` will become the unique identifier. |
| survey_id | [string](#string) |  | The survey this seismic store belongs to, in the old uuid format. |
| survey_id_int | [int64](#int64) |  | The survey this seismic store belongs to. |
| ingestion_source | [com.cognite.seismic.IngestionSource](#com-cognite-seismic-IngestionSource) |  | The source of the seismicstore. It indicates how the file was ingested |
| metadata | [SeismicStore.MetadataEntry](#com-cognite-seismic-v1-SeismicStore-MetadataEntry) | repeated | Any custom-defined metadata |
| ingested_file | [com.cognite.seismic.File](#com-cognite-seismic-File) |  | Same as `ingested_source_file`. This field is deprecated and will be removed in the future. |
| ingested_source_file | [SourceSegyFile](#com-cognite-seismic-v1-SourceSegyFile) |  | If present, the file this SeismicStore was ingested from. |
| inline_volume_def | [VolumeDef](#com-cognite-seismic-v1-VolumeDef) |  | Volume definition for the store, indexed on inlines. Maps from an inline to all of its valid crosslines. |
| crossline_volume_def | [VolumeDef](#com-cognite-seismic-v1-VolumeDef) |  | Volume definition for the store, indexed on crosslines. Maps from a crossline to all of its valid inlines |
| extent | [SeismicExtent](#com-cognite-seismic-v1-SeismicExtent) |  | Description of the traces contained in the seismicstore. |
| text_header | [TextHeader](#com-cognite-seismic-v1-TextHeader) |  | If present, the text header for this seismic store |
| binary_header | [BinaryHeader](#com-cognite-seismic-v1-BinaryHeader) |  | If present, the binary header for this seismic store |
| storage_tier_name | [string](#string) | repeated | Tenant specific name for the storage facility the trace data are stored in. If empty, it is stored in an unspecified trace store. While support for multiple storage backends per store is planned, this is not currently offered. |
| coverage | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | If present, the coverage geometry for this seismic store |
| trace_header_fields | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) | repeated | The trace header fields that have been registered as keys for indexing. |
| dimensions | [Dimensions](#com-cognite-seismic-v1-Dimensions) |  | The underlying file&#39;s data dimensionality, either 2D or 3D |
| crs | [string](#string) |  | The coordinate reference system used by this seismicstore |
| last_modified | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | The last time this object was created or edited. |
| seismic_data_type | [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType) |  | Whether this seismic store contains pre-stack or post-stack data. |






<a name="com-cognite-seismic-v1-SeismicStore-MetadataEntry"></a>

### SeismicStore.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-SeismicTraceGroupExtent"></a>

### SeismicTraceGroupExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| group_header | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | The trace header to differentiate between prestack migrated traces in the same bin |
| lines | [SeismicTraceGroupLines](#com-cognite-seismic-v1-SeismicTraceGroupLines) |  |  |






<a name="com-cognite-seismic-v1-SeismicTraceGroupLines"></a>

### SeismicTraceGroupLines



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| lines | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) | repeated |  |






<a name="com-cognite-seismic-v1-SourceSegyFile"></a>

### SourceSegyFile
File or dataset or cube derived from a single SEG-Y file


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| uuid | [string](#string) |  |  |
| id | [int64](#int64) |  |  |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  |  |
| name | [string](#string) |  | The name of the file |
| cloud_storage_path | [string](#string) |  | Cloud storage path including protocol, bucket, directory structure, and file name. Usually in format gs://path/to/file/some_name.sgy |
| metadata | [SourceSegyFile.MetadataEntry](#com-cognite-seismic-v1-SourceSegyFile-MetadataEntry) | repeated |  |
| segy_overrides | [SegyOverrides](#com-cognite-seismic-v1-SegyOverrides) |  |  |
| key_fields | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) | repeated | The trace header fields that will be used as keys for indexing. |
| dimensions | [Dimensions](#com-cognite-seismic-v1-Dimensions) |  | File data dimensionality, either 2D or 3D |
| crs | [string](#string) |  | The coordinate reference system used by this file |
| survey_id | [int64](#int64) |  | The integer id of the survey this file is contained in |
| last_modified | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | The last time this object was created or edited. |
| seismic_data_type | [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType) |  | Whether this file contains pre-stack or post-stack data. |






<a name="com-cognite-seismic-v1-SourceSegyFile-MetadataEntry"></a>

### SourceSegyFile.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-Survey"></a>

### Survey
Representation of the data for a survey


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Unique identifier for the survey in CDF. The identifier is generated by CDF on creation and not editable. |
| id_int | [int64](#int64) |  | The integer unique ID for the survey. This ID should be used for V1 survey operations. |
| name | [string](#string) |  | Survey name: Should be a short but recognizable name for the survey. Must be unique within a single CDF tenant, and may be used to refer to the survey in API calls.

Survey name |
| metadata | [Survey.MetadataEntry](#com-cognite-seismic-v1-Survey-MetadataEntry) | repeated | Metadata describing the survey with named fields and values.

@exclude TODO: Augment surveys with a predefined set of fields giving a predictable metadata model and better integration with Discover. |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  | External identifier of the survey. The value of this field must be unique among all the surveys in the CDF tenant. It may be used for correlating with systems outside CDF, and for search and retrieval operations later. |
| crs | [string](#string) |  | Coordinate reference system to be used by all members of this survey |
| grid_transformation | [com.cognite.seismic.SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  | Manually specify an affine transformation between bin grid coordinates and projected crs coordinates, either using an origin point and the azimuth of the xline axis (P6Transformation) or by specifying three or more corners of the grid as a list of DoubleTraceCoordinates. This transformation must be valid for all members of this survey. |
| custom_coverage | [com.cognite.seismic.CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  | User-provided coverage override |
| last_modified | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  | The last time this object was created or edited. |






<a name="com-cognite-seismic-v1-Survey-MetadataEntry"></a>

### Survey.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-TextHeader"></a>

### TextHeader
A representation of text headers used to create or edit existing headers.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file_id | [string](#string) |  | DEPRECATED: This field will always be empty |
| header | [string](#string) |  | The text content of the header |
| raw_header | [string](#string) |  | The raw bytes of a header as a string |






<a name="com-cognite-seismic-v1-TraceExtent"></a>

### TraceExtent



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| xline | [int32](#int32) |  |  |
| iline | [int32](#int32) |  |  |
| z | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-VolumeDef"></a>

### VolumeDef
VolumeDef is a simple, versioned, flexible format for describing which grid points of a seismic volume contain data.

The grid is described per line. Each line contains a series of descriptors that specify the points on the axis perpendicular to the line. 
For example, a volumedef that is indexed as inline-major will use inline numbers as keys in the lines object, and have descriptors with crossline numbers.

For more information refer to &lt;a href=&#34;https://cognite-seismic-sdk.readthedocs-hosted.com/en/latest/volumedef.html#volumedef-overview&#34;&gt;the SDK docs&lt;/a&gt;.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| json | [string](#string) |  | Uses the Volume Definition schema |





 


<a name="com-cognite-seismic-v1-CoverageSpec-Format"></a>

### CoverageSpec.Format


| Name | Number | Description |
| ---- | ------ | ----------- |
| WKT | 0 |  |
| GEOJSON | 1 |  |



<a name="com-cognite-seismic-v1-Dimensions"></a>

### Dimensions


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSPECIFIED_DIMENSION | 0 |  |
| TWO_DEE | 2 |  |
| THREE_DEE | 3 |  |



<a name="com-cognite-seismic-v1-SeismicDataType"></a>

### SeismicDataType


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSPECIFIED_DATA_TYPE | 0 |  |
| POSTSTACK | 1 |  |
| PRESTACK_DEPTH_MIGRATED | 2 |  |



<a name="com-cognite-seismic-v1-SurveyCoverageSource"></a>

### SurveyCoverageSource


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSPECIFIED_SURVEY_COVERAGE_SOURCE | 0 | Used as the default when a specific source isn&#39;t requested by the user. |
| CUSTOM | 1 | Requesting or returning custom coverage |
| CALCULATED | 2 | Requesting or returning calculated coverage |



<a name="com-cognite-seismic-v1-TraceHeaderField"></a>

### TraceHeaderField


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNSPECIFIED_TRACE_HEADER_FIELD | 0 |  |
| ENERGY_SOURCE_POINT | 1 |  |
| CDP | 2 |  |
| INLINE | 3 |  |
| CROSSLINE | 4 |  |
| SHOTPOINT | 5 |  |
| CDP_TRACE | 6 | bytes 25-28 of standard trace header: trace number within ensemble |
| OFFSET | 7 | bytes 37-40 of standard trace header: distance from center of source point to the center of receiver group. |


 

 

 



<a name="cognite_seismic_protos_v1_seismic_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/v1/seismic_service.proto


 

 

 


<a name="com-cognite-seismic-v1-SeismicAPI"></a>

### SeismicAPI
Service for querying data and metadata from seismic tracestore in Cognite Data Fusion (CDF) seismic datastore.

Queries are done primarily on cubes, with some management endpoints for tracestores &amp; partitions.

Queries are divided in:
  Metadata: General information and headers for surveys and files
  Trace: Retrieve traces, be it by geometry, line or volume
  Artificial sampling: Get the (calculated/interpolated) values of properties in the file/tracestore given arbitrary positions

Metadata queries

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateSurvey | [CreateSurveyRequest](#com-cognite-seismic-v1-CreateSurveyRequest) | [Survey](#com-cognite-seismic-v1-Survey) | Creates a Survey object in the data model. A Survey object represents a grouping of seismic data in the same area and normally sharing acquisition and most processing parameters. Capabilities: Requires Seismic:WRITE capability to the CDF tenant. |
| SearchSurveys | [SearchSurveysRequest](#com-cognite-seismic-v1-SearchSurveysRequest) | [SearchSurveyResponse](#com-cognite-seismic-v1-SearchSurveyResponse) stream | Lists all surveys accessible to the client. Optionally includes Cubes associated with the surveys.

Can optionally search surveys based on both/either of two criteria: Coverage polygon of files in the survey are within an area delimited by a specified polygon Filters on metadata of both the survey and the file |
| EditSurvey | [EditSurveyRequest](#com-cognite-seismic-v1-EditSurveyRequest) | [Survey](#com-cognite-seismic-v1-Survey) | Modify the metadata for a survey. |
| DeleteSurvey | [DeleteSurveyRequest](#com-cognite-seismic-v1-DeleteSurveyRequest) | [DeleteSurveyResponse](#com-cognite-seismic-v1-DeleteSurveyResponse) | Deletes a specified survey. Must have ALL scope and Write capabilities.

In the case of Surveys, the &#34;name&#34; should be input into the external_ids field of the Identifier. |
| RegisterSourceSegyFile | [RegisterSourceSegyFileRequest](#com-cognite-seismic-v1-RegisterSourceSegyFileRequest) | [RegisterSourceSegyFileResponse](#com-cognite-seismic-v1-RegisterSourceSegyFileResponse) | Registers a new file in a (previously registered) survey as source for ingestion. |
| EditSourceSegyFile | [EditSourceSegyFileRequest](#com-cognite-seismic-v1-EditSourceSegyFileRequest) | [EditSourceSegyFileResponse](#com-cognite-seismic-v1-EditSourceSegyFileResponse) | Edits a registered source file.

Before editing, there must be no ingestion jobs running for the source file and, if already ingested, any SeismicStore associated with the source file must be deleted. This request will fail if the above criteira are not met. |
| UnregisterSourceSegyFile | [UnregisterSourceSegyFileRequest](#com-cognite-seismic-v1-UnregisterSourceSegyFileRequest) | [UnregisterSourceSegyFileResponse](#com-cognite-seismic-v1-UnregisterSourceSegyFileResponse) | Unregisters a file previously registered as source for ingestion.

Before unregistering, there must be no ingestion jobs running for the source file and, if already ingested, any SeismicStore associated with the source file must be deleted. This request will fail if the above criteira are not met. |
| IngestSourceSegyFile | [IngestSourceSegyFileRequest](#com-cognite-seismic-v1-IngestSourceSegyFileRequest) | [IngestSourceSegyFileResponse](#com-cognite-seismic-v1-IngestSourceSegyFileResponse) | Requests queueing of a registered file for ingestion. |
| CreateSeismic | [CreateSeismicRequest](#com-cognite-seismic-v1-CreateSeismicRequest) | [Seismic](#com-cognite-seismic-v1-Seismic) | Create new Seismics and assign them to partitions. Seismics are mostly immutable save for their name and metadata. The user needs to delete an existing cutout and create a new one if e.g. the definition or the seismic store must be changed |
| SearchSeismics | [SearchSeismicsRequest](#com-cognite-seismic-v1-SearchSeismicsRequest) | [Seismic](#com-cognite-seismic-v1-Seismic) stream | Returns Seismic metadata given its id. Can optionally retrieve seismic store &amp; partition info if user has the right scope. Use GetVolume to retrieve traces. |
| EditSeismic | [EditSeismicRequest](#com-cognite-seismic-v1-EditSeismicRequest) | [Seismic](#com-cognite-seismic-v1-Seismic) | Edit the specified seismic. Seismic object names and metadata can be changed. The cutout definition, however, cannot be changed. To modify the definition or the owning partition, delete the seismic object and create a new one. |
| DeleteSeismic | [DeleteSeismicRequest](#com-cognite-seismic-v1-DeleteSeismicRequest) | [DeleteSeismicResponse](#com-cognite-seismic-v1-DeleteSeismicResponse) | Delete seismic objects. |
| SearchSeismicStores | [SearchSeismicStoresRequest](#com-cognite-seismic-v1-SearchSeismicStoresRequest) | [SeismicStore](#com-cognite-seismic-v1-SeismicStore) stream | Search and retrieve seismic stores. Can only retrieve seismic stores you own. |
| InspectIngestion | [InspectIngestionRequest](#com-cognite-seismic-v1-InspectIngestionRequest) | [InspectIngestionResponse](#com-cognite-seismic-v1-InspectIngestionResponse) | Inspect the seismicstore resulting from a possibly failed ingestion. Useful for debugging failed ingestions. |
| EditSeismicStore | [EditSeismicStoreRequest](#com-cognite-seismic-v1-EditSeismicStoreRequest) | [SeismicStore](#com-cognite-seismic-v1-SeismicStore) | Set the name of a seismic store object. |
| DeleteSeismicStore | [DeleteSeismicStoreRequest](#com-cognite-seismic-v1-DeleteSeismicStoreRequest) | [DeleteSeismicStoreResponse](#com-cognite-seismic-v1-DeleteSeismicStoreResponse) | Delete a seismic store. If any seismics still reference the specified seismic store, the request will fail. |
| CreatePartition | [CreatePartitionRequest](#com-cognite-seismic-v1-CreatePartitionRequest) | [Partition](#com-cognite-seismic-v1-Partition) | Create a data partition, optionally setting a name. |
| SearchPartitions | [SearchPartitionsRequest](#com-cognite-seismic-v1-SearchPartitionsRequest) | [Partition](#com-cognite-seismic-v1-Partition) stream | Returns the partition(s) specified, with the same search options as the other search endpoints. |
| EditPartition | [EditPartitionRequest](#com-cognite-seismic-v1-EditPartitionRequest) | [Partition](#com-cognite-seismic-v1-Partition) | Edit partitions. The only modifiable field is the name |
| DeletePartition | [DeletePartitionRequest](#com-cognite-seismic-v1-DeletePartitionRequest) | [DeletePartitionResponse](#com-cognite-seismic-v1-DeletePartitionResponse) | Delete the specified partition, and return whether it was successfully deleted. |
| GetVolume | [VolumeRequest](#com-cognite-seismic-v1-VolumeRequest) | [.com.cognite.seismic.Trace](#com-cognite-seismic-Trace) stream | Request a volume of traces by range of inlines, crosslines and time Deprecated - use StreamTraces instead. |
| GetVolumeBounds | [VolumeRequest](#com-cognite-seismic-v1-VolumeRequest) | [VolumeBoundsResponse](#com-cognite-seismic-v1-VolumeBoundsResponse) | Return information about what a GetVolume request would return, including bounding boxes of trace header values, and estimated total size. Deprecated - use GetTraceBounds instead. |
| StreamTraces | [StreamTracesRequest](#com-cognite-seismic-v1-StreamTracesRequest) | [.com.cognite.seismic.Trace](#com-cognite-seismic-Trace) stream | Request a set of seismic traces by ranges of trace headers such as inline, crossline (for 3d) or cdp or shotpoint (for 2d). Can also filter by geometry, and select a subset of depth indices. See StreamTracesRequest for more information. |
| GetTraceBounds | [StreamTracesRequest](#com-cognite-seismic-v1-StreamTracesRequest) | [TraceBounds](#com-cognite-seismic-v1-TraceBounds) | Return information about what a StreamTraces request would return, including bounding boxes of trace header values, and estimated total size. |
| GetSegYFile | [SegYSeismicRequest](#com-cognite-seismic-v1-SegYSeismicRequest) | [SegYSeismicResponse](#com-cognite-seismic-v1-SegYSeismicResponse) stream | Fetch seismic data in SEG-Y format. The stream of responses each contain a byte array that must be written sequentially to a file to produce a SEG-Y file. The ordering of traces in the output is unspecified.

The request object can be used to specify whether the file should contain the whole set of traces in the source dataset or a subset of the traces (ie. a cropped file). See SegYSeismicRequest for more information. Returns a stream of SegYSeismicResponse objects, each containing a fragment of a SEG-Y data stream. |
| SearchFiles | [SearchFilesRequest](#com-cognite-seismic-v1-SearchFilesRequest) | [SourceSegyFile](#com-cognite-seismic-v1-SourceSegyFile) stream | Retrieves File objects describing the seismic files registered with the tenant. Search criteria can be specified in the SearchFilesRequest, restricting the data retrieved to a subset of the files in the tenant. See SearchFilesRequest for more information. Returns a stream of file objects, terminating all files matching the search criteria have been returned. |
| SearchJobStatus | [SearchJobStatusRequest](#com-cognite-seismic-v1-SearchJobStatusRequest) | [JobStatusResponse](#com-cognite-seismic-v1-JobStatusResponse) stream | Retrieves ingestion job statuses, filtered by the specified criteria. |

 



<a name="cognite_seismic_protos_v1_seismic_service_messages-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/v1/seismic_service_messages.proto
Messages that describe requests/responses from the Seismic Datastore in Cognite Data Fusion


<a name="com-cognite-seismic-v1-CreatePartitionRequest"></a>

### CreatePartitionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | optional name |
| external_id | [string](#string) |  | not optional externalid |






<a name="com-cognite-seismic-v1-CreateSeismicRequest"></a>

### CreateSeismicRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | optional |
| external_id | [string](#string) |  | not optional |
| partition | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |
| seismic_store_id | [int64](#int64) |  |  |
| volume_def | [VolumeDef](#com-cognite-seismic-v1-VolumeDef) |  | Define the volume as VolumeDef format |
| geometry | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | Defines the volume as WKT or GeoJson |
| empty | [bool](#bool) |  | If true, will create a seismic with an empty cutout |
| two_dee_extent | [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent) |  | only valid if the seismic is 2D |
| three_dee_extent | [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent) |  | only valid if the seismic is 3D |
| metadata | [OptionalMap](#com-cognite-seismic-v1-OptionalMap) |  |  |
| text_header | [TextHeader](#com-cognite-seismic-v1-TextHeader) |  | Optionally set a custom text header |
| binary_header | [BinaryHeader](#com-cognite-seismic-v1-BinaryHeader) |  | Optionally set a custom binary header |
| copy_metadata | [bool](#bool) |  | If true, copy the metadata from the source seismic store. |
| trace_group_extent | [SeismicTraceGroupExtent](#com-cognite-seismic-v1-SeismicTraceGroupExtent) |  | Valid if the seismic is 2D or 3D |






<a name="com-cognite-seismic-v1-CreateSurveyRequest"></a>

### CreateSurveyRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Short descriptive name |
| metadata | [CreateSurveyRequest.MetadataEntry](#com-cognite-seismic-v1-CreateSurveyRequest-MetadataEntry) | repeated | Key-value pairs of metadata for the survey. |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  | Identifier for correlation with systems outside CDF |
| crs | [string](#string) |  | CRS used by all members |
| grid_transformation | [com.cognite.seismic.SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  | Optional |
| custom_coverage | [com.cognite.seismic.CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  | [optional] Customer-provided survey coverage |






<a name="com-cognite-seismic-v1-CreateSurveyRequest-MetadataEntry"></a>

### CreateSurveyRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-DeletePartitionRequest"></a>

### DeletePartitionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| partition | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |






<a name="com-cognite-seismic-v1-DeletePartitionResponse"></a>

### DeletePartitionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="com-cognite-seismic-v1-DeleteSeismicRequest"></a>

### DeleteSeismicRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |






<a name="com-cognite-seismic-v1-DeleteSeismicResponse"></a>

### DeleteSeismicResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| succeeded | [bool](#bool) |  |  |






<a name="com-cognite-seismic-v1-DeleteSeismicStoreRequest"></a>

### DeleteSeismicStoreRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic_store | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |






<a name="com-cognite-seismic-v1-DeleteSeismicStoreResponse"></a>

### DeleteSeismicStoreResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| succeeded | [bool](#bool) |  |  |






<a name="com-cognite-seismic-v1-DeleteSurveyRequest"></a>

### DeleteSurveyRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |






<a name="com-cognite-seismic-v1-DeleteSurveyResponse"></a>

### DeleteSurveyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name="com-cognite-seismic-v1-EditPartitionRequest"></a>

### EditPartitionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| partition | [Identifier](#com-cognite-seismic-v1-Identifier) |  | Must uniquely identify a partition |
| new_name | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-EditSeismicRequest"></a>

### EditSeismicRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |
| name | [google.protobuf.StringValue](#google-protobuf-StringValue) |  |  |
| metadata | [OptionalMap](#com-cognite-seismic-v1-OptionalMap) |  |  |
| text_header | [TextHeader](#com-cognite-seismic-v1-TextHeader) |  | Replaces the existing text header, if specified |
| binary_header | [BinaryHeader](#com-cognite-seismic-v1-BinaryHeader) |  | Replaces the existing binary header, if specified |






<a name="com-cognite-seismic-v1-EditSeismicStoreRequest"></a>

### EditSeismicStoreRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic_store_id | [int64](#int64) |  | Deprecated. Use `identifier` instead. |
| name | [google.protobuf.StringValue](#google-protobuf-StringValue) |  | If not null will change the seismic store name |
| metadata | [OptionalMap](#com-cognite-seismic-v1-OptionalMap) |  | If not null, will replace the seismic store metadata |
| seismic_store | [Identifier](#com-cognite-seismic-v1-Identifier) |  | Uniquely identifies one seismic store |
| external_id | [google.protobuf.StringValue](#google-protobuf-StringValue) |  | If not null, will attempt to change the seismic store external id. Can fail if the new external id is not unique. |






<a name="com-cognite-seismic-v1-EditSourceSegyFileRequest"></a>

### EditSourceSegyFileRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-v1-Identifier) |  | [required] The registered source file to edit |
| path | [google.protobuf.StringValue](#google-protobuf-StringValue) |  | [optional] Path including protocol, bucket, directory structure, and file name. Example: &#34;gs://cognite-seismic-eu/samples/DN1302M03R16_MERGED_KPSDM_00-32_DEG_T.sgy&#34; |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] An external identifier - matches service contract field |
| metadata | [EditSourceSegyFileRequest.MetadataEntry](#com-cognite-seismic-v1-EditSourceSegyFileRequest-MetadataEntry) | repeated | [optional] Any custom-defined metadata |
| crs | [com.cognite.seismic.CRS](#com-cognite-seismic-CRS) |  | [optional] Official name of the CRS used. Example: &#34;EPSG:23031&#34; |
| segy_overrides | [SegyOverrides](#com-cognite-seismic-v1-SegyOverrides) |  | [optional] Overrides for the source file |
| key_fields | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) | repeated | [optional] The trace header fields that will be used as keys for indexing |
| dimensions | [Dimensions](#com-cognite-seismic-v1-Dimensions) |  | [optional] File data dimensionality, either 2D or 3D |
| seismic_data_type | [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType) |  | [required] The type of seismic data contained in this file. E.g., pre-stack vs. post-stack |






<a name="com-cognite-seismic-v1-EditSourceSegyFileRequest-MetadataEntry"></a>

### EditSourceSegyFileRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-EditSourceSegyFileResponse"></a>

### EditSourceSegyFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [SourceSegyFile](#com-cognite-seismic-v1-SourceSegyFile) |  |  |






<a name="com-cognite-seismic-v1-EditSurveyRequest"></a>

### EditSurveyRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |
| metadata | [OptionalMap](#com-cognite-seismic-v1-OptionalMap) |  | The existing metadata will be replaced with this metadata. |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  |  |
| crs | [com.cognite.seismic.CRS](#com-cognite-seismic-CRS) |  | CRS used by all members |
| grid_transformation | [com.cognite.seismic.SurveyGridTransformation](#com-cognite-seismic-SurveyGridTransformation) |  | Optional |
| custom_coverage | [com.cognite.seismic.CustomSurveyCoverage](#com-cognite-seismic-CustomSurveyCoverage) |  | Optional |
| new_name | [google.protobuf.StringValue](#google-protobuf-StringValue) |  | If provided, the new name of the survey |






<a name="com-cognite-seismic-v1-GeometryBasedVolume"></a>

### GeometryBasedVolume



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| geometry | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  |  |
| interpolation_method | [com.cognite.seismic.InterpolationMethod](#com-cognite-seismic-InterpolationMethod) |  | Required if the geometry describes a line, otherwise ignored |
| z_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  |  |






<a name="com-cognite-seismic-v1-IngestSourceSegyFileRequest"></a>

### IngestSourceSegyFileRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-v1-Identifier) |  | [required] The file to queue for ingestiong |
| target_storage_tier_name | [string](#string) |  | [required] Target storage tier for this file.

A storage tier is a defined facility for storing the trace data associated with a seismic volume.

[Accepted values] Accepted values are defined by the tenant configuration, and allow for optimizing tradeoffs between storage cost, retrieval performance, numeric precision and sampling.

Note that currently only one storage tier per trace store is supported, so ingesting an already ingested file will result in the file&#39;s data being removed from the previously active storage tier. |






<a name="com-cognite-seismic-v1-IngestSourceSegyFileResponse"></a>

### IngestSourceSegyFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job_id | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-IngestionLog"></a>

### IngestionLog



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| timestamp | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| log_line | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-InspectIngestionRequest"></a>

### InspectIngestionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic_store_id | [int64](#int64) |  |  |
| file_id | [int64](#int64) |  |  |
| job_id | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-InspectIngestionResponse"></a>

### InspectIngestionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic_store | [SeismicStore](#com-cognite-seismic-v1-SeismicStore) |  |  |






<a name="com-cognite-seismic-v1-JobStatusResponse"></a>

### JobStatusResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job_id | [string](#string) |  |  |
| file_uuid | [string](#string) |  |  |
| status | [com.cognite.seismic.JobStatus](#com-cognite-seismic-JobStatus) |  |  |
| started_at | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| updated_at | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| target_storage_tier_name | [google.protobuf.StringValue](#google-protobuf-StringValue) |  |  |
| logs | [IngestionLog](#com-cognite-seismic-v1-IngestionLog) | repeated |  |
| file_id | [int64](#int64) |  |  |






<a name="com-cognite-seismic-v1-RegisterSourceSegyFileRequest"></a>

### RegisterSourceSegyFileRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Identifier](#com-cognite-seismic-v1-Identifier) |  | [required] The survey this source file belongs to |
| path | [string](#string) |  | [required] Path including protocol, bucket, directory structure, and file name. Example: &#34;gs://cognite-seismic-eu/samples/DN1302M03R16_MERGED_KPSDM_00-32_DEG_T.sgy&#34; |
| external_id | [com.cognite.seismic.ExternalId](#com-cognite-seismic-ExternalId) |  | [optional] An external identifier - matches service contract field |
| metadata | [RegisterSourceSegyFileRequest.MetadataEntry](#com-cognite-seismic-v1-RegisterSourceSegyFileRequest-MetadataEntry) | repeated | [optional] Any custom-defined metadata |
| crs | [com.cognite.seismic.CRS](#com-cognite-seismic-CRS) |  | [required] Official name of the CRS used. Example: &#34;EPSG:23031&#34; |
| segy_overrides | [SegyOverrides](#com-cognite-seismic-v1-SegyOverrides) |  | [optional] Overrides for the source file |
| key_fields | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) | repeated | [optional] The trace header fields that will be used as keys for indexing |
| dimensions | [Dimensions](#com-cognite-seismic-v1-Dimensions) |  | [required] File data dimensionality, either 2D or 3D |
| seismic_data_type | [SeismicDataType](#com-cognite-seismic-v1-SeismicDataType) |  | [required] The type of seismic data contained in this file. E.g., pre-stack vs. post-stack |






<a name="com-cognite-seismic-v1-RegisterSourceSegyFileRequest-MetadataEntry"></a>

### RegisterSourceSegyFileRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="com-cognite-seismic-v1-RegisterSourceSegyFileResponse"></a>

### RegisterSourceSegyFileResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [SourceSegyFile](#com-cognite-seismic-v1-SourceSegyFile) |  |  |






<a name="com-cognite-seismic-v1-SearchFilesRequest"></a>

### SearchFilesRequest
Used to search files by a given file/seismic-store/survey search specification


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| spec | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  | Find files using a file search specification |
| seismic_store | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  | Find files using a seismic store search specification |
| survey | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  | Find files using a survey search specification |
| last_modified | [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter) |  | Filter files by last modified. |






<a name="com-cognite-seismic-v1-SearchJobStatusRequest"></a>

### SearchJobStatusRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| job_id | [string](#string) |  |  |
| file_uuid | [string](#string) |  |  |
| file_id | [int64](#int64) |  |  |
| status | [com.cognite.seismic.JobStatus](#com-cognite-seismic-JobStatus) |  |  |
| target_storage_tier_name | [google.protobuf.StringValue](#google-protobuf-StringValue) |  |  |
| started_before | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| started_after | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| updated_before | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |
| updated_after | [google.protobuf.Timestamp](#google-protobuf-Timestamp) |  |  |






<a name="com-cognite-seismic-v1-SearchPartitionsRequest"></a>

### SearchPartitionsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| partitions | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| last_modified | [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter) |  | Search for partitions by last modified. |






<a name="com-cognite-seismic-v1-SearchSeismicStoresRequest"></a>

### SearchSeismicStoresRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic_store | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| survey | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| file | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| last_modified | [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter) |  | Will return seismic stores by last modified. |
| include_file_info | [bool](#bool) |  | If true, include File information in the response |
| include_volume_definitions | [bool](#bool) |  | If true, includes inline/crossline volume definitions for store |
| include_extent | [bool](#bool) |  | If true, include a description of the traces contained in the seismicstore |
| extent_key | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | If specified, indicates which trace header the extent should be indexed by (if a 2d header), or which should be the major direction (if a 3d header). Leaving this unspecified with `include_extent=true` means the server chooses a key header for each seismicstore. Any seismicstores not indexed by the given header will have its extent field left as null. |
| include_headers | [bool](#bool) |  | if true, include text and binary headers in the response |
| include_coverage | [bool](#bool) |  | Deprecated. Use `coverage` instead. |
| coverage | [CoverageSpec](#com-cognite-seismic-v1-CoverageSpec) |  | If specified, include coverage |






<a name="com-cognite-seismic-v1-SearchSeismicsRequest"></a>

### SearchSeismicsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| seismic | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  |  |
| partition | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  | Can only search on partitions you can see. |
| seismic_store | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) |  | Must be a data manager to search by seismic store. |
| last_modified | [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter) |  | Search for seismics by last modified |
| include_text_header | [bool](#bool) |  |  |
| include_binary_header | [bool](#bool) |  |  |
| include_line_range | [bool](#bool) |  |  |
| include_volume_definition | [bool](#bool) |  | If true, include the volume definition |
| include_cutout | [bool](#bool) |  | If true, include the cutout specification the seismic was created with |
| include_extent | [bool](#bool) |  | If true, include a description of the included traces |
| extent_key | [TraceHeaderField](#com-cognite-seismic-v1-TraceHeaderField) |  | If specified, indicates which trace header the extent should be indexed by (if a 2d header), or which should be the major direction (if a 3d header). Leaving this unspecified with `include_extent=true` means the server chooses the native key header for each seismic. Any seismic not indexed by the given header will have its extent field left as null. |
| include_seismic_store | [bool](#bool) |  | If true, include info on the backing seismicstore. Must be data manager. |
| include_partition | [bool](#bool) |  | If true, include info on the partition. Must be data manager.\ |
| include_coverage | [bool](#bool) |  | Deprecated. Use `coverage` instead. |
| coverage | [CoverageSpec](#com-cognite-seismic-v1-CoverageSpec) |  | If specified, requests coverage as well. |






<a name="com-cognite-seismic-v1-SearchSurveyResponse"></a>

### SearchSurveyResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| survey | [Survey](#com-cognite-seismic-v1-Survey) |  |  |
| seismic_ids | [string](#string) | repeated | Optionally present |
| seismic_store_ids | [string](#string) | repeated | Optionally present |
| coverage | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  | Optionally present |
| coverage_source | [SurveyCoverageSource](#com-cognite-seismic-v1-SurveyCoverageSource) |  |  |






<a name="com-cognite-seismic-v1-SearchSurveysRequest"></a>

### SearchSurveysRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| surveys | [SearchSpec](#com-cognite-seismic-v1-SearchSpec) | repeated | Optional identifier of the survey. If empty, retrieve all accessible surveys |
| list_seismic_ids | [bool](#bool) |  | set to true to list the survey&#39;s seismics in the response (default: false) |
| list_seismic_store_ids | [bool](#bool) |  | Set to true to list the survey&#39;s seismic stores in the response. Only tenant users can see this. |
| include_metadata | [bool](#bool) |  | set to true to include survey metadata in the response (default: false) |
| include_coverage | [com.cognite.seismic.CoverageParameters](#com-cognite-seismic-CoverageParameters) |  | Deprecated. Use `coverage` instead. |
| coverage | [CoverageSpec](#com-cognite-seismic-v1-CoverageSpec) |  | set this field to include coverage in the response (default: No coverage) |
| include_grid_transformation | [bool](#bool) |  | set this field to include the manually specified grid transformation in the response (default: false) |
| include_custom_coverage | [bool](#bool) |  | set this field to include the customer-provided survey coverage in the response |
| coverage_source | [SurveyCoverageSource](#com-cognite-seismic-v1-SurveyCoverageSource) |  | Requests that a coverage geometry from a particular source is returned in the SearchSurveysResponse. If this field is specified, the coverage parameters in the include_coverage field must also be set. Note that this is independent from the custom coverage returned as part of the survey. If no coverage source is provided, but the coverage parameters are provided, the coverage geometry will be fetched from the custom coverage if one has been provided, and the calculated coverage in other cases. |
| last_modified | [LastModifiedFilter](#com-cognite-seismic-v1-LastModifiedFilter) |  | If set, will further filter returned objects by last modified. |






<a name="com-cognite-seismic-v1-SegYSeismicRequest"></a>

### SegYSeismicRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |
| seismic_store_id | [int64](#int64) |  | Need to be a data manager or tenant user, not 3rd party, to access by seismic store |
| polygon | [com.cognite.seismic.Geometry](#com-cognite-seismic-Geometry) |  |  |
| lines | [com.cognite.seismic.LineBasedRectangle](#com-cognite-seismic-LineBasedRectangle) |  | Only valid if the queried object is 3D. Deprecated. Use three_dee_extent instead. |
| two_dee_extent | [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent) |  | Only valid if the queried object is 2D |
| three_dee_extent | [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent) |  | Only valid if the queried object is 3D |
| skip_message_count | [int32](#int32) |  | Skip the first n chunks of the download. Useful for resuming aborted downloads. Default: 0. |
| trace_group_filter | [SeismicTraceGroupExtent](#com-cognite-seismic-v1-SeismicTraceGroupExtent) |  | Select which traces to return within each ensemble. Only if the queried object is pre-stack. |






<a name="com-cognite-seismic-v1-SegYSeismicResponse"></a>

### SegYSeismicResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  |  |






<a name="com-cognite-seismic-v1-StreamTracesRequest"></a>

### StreamTracesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic | [Identifier](#com-cognite-seismic-v1-Identifier) |  | The identifier of the Seismic object to stream traces from |
| seismic_store_id | [int64](#int64) |  | The id of the Seismicstore to stream traces from. Only accessible by data managers. |
| two_dee_extent | [Seismic2dExtent](#com-cognite-seismic-v1-Seismic2dExtent) |  | Filter traces by 2D header ranges. Only valid if the queried object is 2D |
| three_dee_extent | [Seismic3dExtent](#com-cognite-seismic-v1-Seismic3dExtent) |  | Filter traces by 3D header ranges. Only valid if the queried object is 3D |
| geometry | [GeometryFilter](#com-cognite-seismic-v1-GeometryFilter) |  | Filter traces by geometry. If the geometry is a polygon, select traces contained in the geometry. If the geometry is a line or a linestring, interpolate traces onto the line. |
| z_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  | Select which depth indices to return as part of the traces. |
| include_trace_header | [bool](#bool) |  | Whether to include the binary trace header in the streamed traces. |
| trace_group_filter | [SeismicTraceGroupExtent](#com-cognite-seismic-v1-SeismicTraceGroupExtent) |  | Select which traces to return within each ensemble. Only valid if the queried object is pre-stack. |






<a name="com-cognite-seismic-v1-TraceBounds"></a>

### TraceBounds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace_size_bytes | [int32](#int32) |  | The size in bytes of one Trace message |
| num_traces | [int32](#int32) |  | The number of traces returned |
| sample_count | [int32](#int32) |  | The number of samples per trace |
| crs | [string](#string) |  | CRS of the returned trace coordinates |
| z_range | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  | The actual range of z values returned |
| three_dee_bounds | [LineRange](#com-cognite-seismic-v1-LineRange) |  | Three-dimensional bounds for the case when the seismic object is 3D |
| two_dee_bounds | [TwoDeeBounds](#com-cognite-seismic-v1-TwoDeeBounds) |  | Two-dimensional bounds for the case when the seismic object is 2D |
| cdp_trace_bounds | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  | Will be null for post-stack data |






<a name="com-cognite-seismic-v1-TwoDeeBounds"></a>

### TwoDeeBounds



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| requested_bounds | [Seismic2dRange](#com-cognite-seismic-v1-Seismic2dRange) |  | A range bounding the trace header values of the returned traces, using the trace key specified in the extent (if any), or CDP if no extent was specified |
| cdp_bounds | [com.cognite.seismic.LineDescriptor](#com-cognite-seismic-LineDescriptor) |  | A range bounding the CDP numbers of the returned traces |






<a name="com-cognite-seismic-v1-UnregisterSourceSegyFileRequest"></a>

### UnregisterSourceSegyFileRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [Identifier](#com-cognite-seismic-v1-Identifier) |  | [required] The file to unregister |






<a name="com-cognite-seismic-v1-UnregisterSourceSegyFileResponse"></a>

### UnregisterSourceSegyFileResponse







<a name="com-cognite-seismic-v1-VolumeBoundsResponse"></a>

### VolumeBoundsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| trace_size_bytes | [int32](#int32) |  | The size in bytes of one Trace message |
| num_traces | [int32](#int32) |  | The number of traces returned |
| sample_count | [int32](#int32) |  | The number of samples per trace |
| crs | [string](#string) |  | CRS of the returned trace coordinates |
| bounds | [LineBasedVolume](#com-cognite-seismic-v1-LineBasedVolume) |  | Upper and lower bounds and step sizes in each direction for the returned traces. Null if the result is empty. The iline and xline fields will be null for a line-like geometry. |






<a name="com-cognite-seismic-v1-VolumeRequest"></a>

### VolumeRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| seismic | [Identifier](#com-cognite-seismic-v1-Identifier) |  |  |
| seismic_store_id | [int64](#int64) |  | Need to be a data manager or tenant user, not 3rd party, to access by tracestore |
| volume | [LineBasedVolume](#com-cognite-seismic-v1-LineBasedVolume) |  |  |
| geometry | [GeometryBasedVolume](#com-cognite-seismic-v1-GeometryBasedVolume) |  |  |
| include_trace_header | [bool](#bool) |  |  |





 

 

 

 



<a name="cognite_seismic_protos_persisted_trace-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/persisted_trace.proto



<a name="com-cognite-seismic-PersistedTrace"></a>

### PersistedTrace
Version:
For trace data:
1 - no compression of traces
2 - zstd compression of traces
3 - waveform compression
For trace headers:
1 - gzip compression
2 - no compression, storing diff bytes of base header


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [int32](#int32) |  |  |
| trace | [bytes](#bytes) |  |  |
| header | [bytes](#bytes) |  |  |





 

 

 

 



<a name="cognite_seismic_protos_query_service-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## cognite/seismic/protos/query_service.proto


 

 

 


<a name="com-cognite-seismic-Query"></a>

### Query
Service for querying data and metadata from seismic files in Cognite Data Fusion
(CDF) seismic datastore We use the word `File` to refer to a single seismic
file/dataset/cube. Queries on a file require it to have been previously ingested
into CDF using (ingest_service.proto)

Queries are divided in:

- Metadata:

General information and headers for surveys and files

- Geometry and grid:

Information on a file&#39;s grid and positioning, such as coverage and range of
inlines and crosslines

- Trace:

Find a single trace in the file. A trace will include header, position
information and samples. More details about the trace format can be found on its
definition in (types.proto)

- Vertical slice:

Get 2D vertical slices of samples (thus 1D arrays of traces). The slices can
be based on a single defined line or in an arbitrarily defined line with
interpolation.

- Area:

Get 3D volumes of samples (thus 2D arrays of traces) defined by a region in
the horizontal plane

- Horizontal slice:

Get 2D horizontal slices of samples defined by a region in the horizontal
plane and a specific index in depth/time

- Artificial sampling:

Get the (calculated/interpolated) values of properties in the file/cube
given arbitrary positions

Metadata queries

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| GetSurvey | [SurveyQueryRequest](#com-cognite-seismic-SurveyQueryRequest) | [GetSurveyResponse](#com-cognite-seismic-GetSurveyResponse) | Finds one survey given its name or id. Optionally, lists its associated files. |
| ListSurveys | [ListSurveysQueryRequest](#com-cognite-seismic-ListSurveysQueryRequest) | [SurveyWithFilesResponse](#com-cognite-seismic-SurveyWithFilesResponse) | Lists all surveys owned by this project. Optionally, includes their lists of files. |
| ListFiles | [.google.protobuf.Empty](#google-protobuf-Empty) | [ListFilesResponse](#com-cognite-seismic-ListFilesResponse) | Lists all files available, both owned by the authorized CDF project and shared with it |
| SearchSurveys | [SearchSurveyRequest](#com-cognite-seismic-SearchSurveyRequest) | [SurveyWithFilesResponse](#com-cognite-seismic-SurveyWithFilesResponse) | Search surveys based on two criteria: 1. Coverage polygon of files in the survey are within an area delimited by a specified polygon 2. Filters on metadata of both the survey and the file. Both criteria are optional and can be combined for a more detailed search. |
| GetFile | [FileQueryRequest](#com-cognite-seismic-FileQueryRequest) | [GetFileResponse](#com-cognite-seismic-GetFileResponse) | Returns file metadata given its name or id. |
| GetBinaryHeader | [HeaderFileQueryRequest](#com-cognite-seismic-HeaderFileQueryRequest) | [GetBinaryHeaderResponse](#com-cognite-seismic-GetBinaryHeaderResponse) | Returns a binary header given its file name or id. |
| GetTextHeader | [HeaderFileQueryRequest](#com-cognite-seismic-HeaderFileQueryRequest) | [GetTextHeaderResponse](#com-cognite-seismic-GetTextHeaderResponse) | Returns a text header given its file name or id. |
| GetFileDataCoverage | [FileCoverageRequest](#com-cognite-seismic-FileCoverageRequest) | [DataCoverageResponse](#com-cognite-seismic-DataCoverageResponse) | Returns the coverage for a given file identified by its id or name. The coverage is represented by a polygon either in WKT or geojson and represents the area covered by traces in the file. There can be holes in the polygon if traces do not exist in an area inside of it. DEPRECATE in favor of Geospatial APIs. |
| GetFileLineRange | [FileQueryRequest](#com-cognite-seismic-FileQueryRequest) | [LineRangeResponse](#com-cognite-seismic-LineRangeResponse) | Returns the full range of the inlines and crosslines in the file, i.e. the minimum and maximum inline and crossline |
| GetCrosslinesByInline | [FileLineQueryRequest](#com-cognite-seismic-FileLineQueryRequest) | [AvailableLines](#com-cognite-seismic-AvailableLines) | Returns the set of valid crossline indices for a specific inline, in a given file DEPRECATE: Move to GetFileLineRange. |
| GetInlinesByCrossline | [FileLineQueryRequest](#com-cognite-seismic-FileLineQueryRequest) | [AvailableLines](#com-cognite-seismic-AvailableLines) | Returns the set of valid inline indices for a specific crossline, in a given file DEPRECATE: Move to GetFileLineRange. |
| GetTraceByCoordinates | [CoordinateTraceQueryRequest](#com-cognite-seismic-CoordinateTraceQueryRequest) | [Trace](#com-cognite-seismic-Trace) | Returns the trace in a file that is closest to a point given its coordinates (x,y) |
| GetTracesByLine | [LineTraceQueryRequest](#com-cognite-seismic-LineTraceQueryRequest) stream | [Trace](#com-cognite-seismic-Trace) stream | Returns a trace for each coordinate (inline, xline) from the input stream |
| GetSliceByLine | [LineSliceQueryRequest](#com-cognite-seismic-LineSliceQueryRequest) | [Trace](#com-cognite-seismic-Trace) stream | Returns all or a subset of traces in a slice (inline or crossline) given its index (and optionally from/to) DEPRECATED, use GetVolume instead. |
| GetSliceByGeometry | [GeometrySliceQueryRequest](#com-cognite-seismic-GeometrySliceQueryRequest) | [Trace](#com-cognite-seismic-Trace) stream | Returns a slice with traces following a path determined by an arbitrary line. Depending on interpolating method, these can be either real traces in the file that are closest to the path or synthetic traces generated by interpolation of the traces in the file. |
| GetCubeByLines | [LineCubeRequest](#com-cognite-seismic-LineCubeRequest) | [Trace](#com-cognite-seismic-Trace) stream | Returns a volume with all traces inside a given range of inlines and a given range of crosslines DEPRECATED, use GetVolume instead. |
| GetCubeByGeometry | [GeometryCubeRequest](#com-cognite-seismic-GeometryCubeRequest) | [Trace](#com-cognite-seismic-Trace) stream | Returns a volume with all traces with x, y coordinates inside an arbitrary 2D polygon |
| GetSegYFile | [SegYQueryRequest](#com-cognite-seismic-SegYQueryRequest) | [SegYQueryResponse](#com-cognite-seismic-SegYQueryResponse) stream | Returns a SEG-Y file. Can retrieve a full file or create a new cropped file filtering on areas of interest only. DEPRECATED, to be replaced with a command line tool or an SDK method for constructing a SEG-Y file by calling GetVolume |
| GetSlabByLines | [LineSlabRequest](#com-cognite-seismic-LineSlabRequest) | [SlabTrace](#com-cognite-seismic-SlabTrace) stream | Returns a seismic slab by either horizon or constant depth and area constrained by a range of inlines and crosslines |
| GetTimeSliceByGeometry | [GeometryTimeSliceQueryRequest](#com-cognite-seismic-GeometryTimeSliceQueryRequest) | [SurfacePoint](#com-cognite-seismic-SurfacePoint) stream | Returns a horizontal slice for a given depth or time and area constrained by an arbitrary 2D polygon |
| GetVolume | [VolumeRequest](#com-cognite-seismic-VolumeRequest) | [Trace](#com-cognite-seismic-Trace) stream | Volume queries |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

