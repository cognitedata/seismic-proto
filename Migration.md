# Migration guide from v0 Query Service to v1 Seismic Service
Documentation for the v1 is avaialble at [https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/)

## com.cognite.seismic.Query.GetSurvey
Use [`com.cognite.seismic.v1.SeismicService.SearchSurveys`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

### Payload example
#### v0:
```
{
  "survey": {
    "name": "some_name"
  }
}
```
#### v1:
```
{
  "surveys": {
    "name": "some_name"
  }
}
```

## com.cognite.seismic.Query.ListSurveys
Use [`com.cognite.seismic.v1.SeismicService.SearchSurveys`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) without specifying a [`surveys`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchsurveysrequest) search spec.

### Payload example
#### v0:
```
{
  "include_metadata": true
}
```
#### v1:
```
{
  "include_metadata": true
}
```

## com.cognite.seismic.Query.ListFiles
Use [`com.cognite.seismic.v1.SeismicService.SearchFiles`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) without specifying a [`spec`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchfilesrequest) search spec.

## com.cognite.seismic.Query.SearchSurveys
See [`com.cognite.seismic.v1.SeismicService.SearchSurveys`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

## com.cognite.seismic.Query.GetFile
Use [`com.cognite.seismic.v1.SeismicService.SearchFiles`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) using a [`spec`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchfilesrequest) containing the [`identifier`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.SearchSpec) for the file.

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_name"
  }
}
```
#### v1:
```
{
  "spec": {
    "name": "some_name"
  }
}
```

## com.cognite.seismic.Query.GetBinaryHeader
The original SEG-Y binary headers can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismicStores`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) by setting [`include_headers`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchseismicstoresrequest) to `true`.

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_name"
  }
}
```
#### v1:
```
{
  "seismic_store": {
    "name": "some_name"
  },
  "include_headers": true
}
```

Additionally, [`seismic`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic) objects also have binary headers. By default they are inherited from the original file, but may be overridden by the data managers. They can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismics`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

### Payload example
#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "include_binary_header": true
}
```

## com.cognite.seismic.Query.GetTextHeader
The original SEG-Y text headers can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismicStores`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) by setting [`include_headers`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchseismicstoresrequest) to `true`.

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_name"
  }
}
```
#### v1:
```
{
  "seismic_store": {
    "name": "some_name"
  },
  "include_headers": true
}
```

Additionally, [`seismic`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic) objects also have text headers. By default they are inherited from the original file, but may be overridden by the data managers. They can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismics`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

### Payload example
#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "include_text_header": true
}
```

## com.cognite.seismic.Query.GetFileDataCoverage
Use [`com.cognite.seismic.v1.SeismicService.SearchSeismicStores`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) specifying [`coverage`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchseismicstoresrequest) with the [`format`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.CoverageSpec) desired.

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_name"
  },
  "in_wkt": true
}
```
#### v1:
```
{
  "seismic_store": {
    "name": "some_name"
  },
  "coverage": {
    "format": 0
  }
}
```

Additionally, [`seismic`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic) objects also have coverage. They can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismics`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

### Payload example
#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "coverage": {
    "format": 0
  }
}
```

## com.cognite.seismic.Query.GetFileLineRange
The line range can be fetched from a [`seismic`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic) through [`com.cognite.seismic.v1.SeismicService.SearchSeismics`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries)

### Payload example
#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "include_line_range": true
}
```

## com.cognite.seismic.Query.GetCrosslinesByInline
**Deprecated**

See [`com.cognite.seismic.Query.GetFileLineRange`](##com.cognite.seismic.Query.GetFileLineRange)

## com.cognite.seismic.Query.GetInlinesByCrossline
**Deprecated**

See [`com.cognite.seismic.Query.GetFileLineRange`](##com.cognite.seismic.Query.GetFileLineRange)

## com.cognite.seismic.Query.GetTraceByCoordinates
To get the closest trace to a given coordinate, [`com.cognite.seismic.v1.SeismicService.GetVolume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) can be used specifying the [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#volumerequest) with [`interpolation_method`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.GeometryBasedVolume) set to [`NEAREST_TRACE`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.InterpolationMethod), and a [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.Geometry) containing the coordinate of interest.

### Payload example
#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "geometry": {
    "geometry": {
      "crs": "EPSG:4326",
      "wkt": "POINT(10 20)"
    },
    "interpolation_method": 0
  }
}
```

## com.cognite.seismic.Query.GetSliceByLine
**Deprecated**

See [`com.cognite.seismic.Query.GetVolume`](##com.cognite.seismic.Query.GetVolume)

## com.cognite.seismic.Query.GetSliceByGeometry
Use [`com.cognite.seismic.v1.SeismicService.GetVolume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.Geometry).

See [`com.cognite.seismic.Query.GetTraceByCoordinates`](##com.cognite.seismic.Query.GetTraceByCoordinates).

## com.cognite.seismic.Query.GetCubeByLines
**Deprecated**

See [`com.cognite.seismic.Query.GetVolume`](##com.cognite.seismic.Query.GetVolume)

## com.cognite.seismic.Query.GetCubeByGeometry
Use [`com.cognite.seismic.v1.SeismicService.GetVolume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.Geometry).

See [`com.cognite.seismic.Query.GetTraceByCoordinates`](##com.cognite.seismic.Query.GetTraceByCoordinates).

## com.cognite.seismic.Query.GetSegYFile
Use [com.cognite.seismic.v1.SeismicService.GetSegYFile](com.cognite.seismic.v1.SeismicService.GetSegYFile) instead.

## com.cognite.seismic.Query.GetSlabByLines
Use [`com.cognite.seismic.v1.SeismicService.GetVolume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the [`volume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#volumerequest) with the desired [`iline`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.LineBasedVolume) and [`xline`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.LineBasedVolume), and the [`z`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.LineBasedVolume) range of the slab.

#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "volume": {
    "iline": {
      "min": 2,
      "max": 22,
      "step": 4
    },
    "xline": {
      "min": 1,
      "max": 5
    },
    "z": {
      "min": 100,
      "max": 200
    }
  },

}
```

## com.cognite.seismic.Query.GetTimeSliceByGeometry
Use [`com.cognite.seismic.v1.SeismicService.GetVolume`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#volumerequest) with a [`z_range`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.GeometryBasedVolume) contaning the depth of interest, and a [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.Geometry) desired.

See [`com.cognite.seismic.Query.GetSliceByGeometry`](##com.cognite.seismic.Query.GetSliceByGeometry).

#### v1:
```
{
  "seismic": {
    "id": 1234
  },
  "geometry": {
    "geometry": {
      "crs": "EPSG:4326",
      "wkt": "POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))"
    },
    "z_range": {
      "min": 100,
      "max": 100
    }
  }
}
```

## com.cognite.seismic.Query.GetVolume
Use [com.cognite.seismic.v1.SeismicService.GetVolume](com.cognite.seismic.v1.SeismicService.GetVolume) instead.
