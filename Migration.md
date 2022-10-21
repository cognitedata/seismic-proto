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
  "file": {
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
  "seismic_store": {
    "name": "some_name"
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
  "seismic_store": {
    "name": "some_name"
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
  "file": {
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
  "seismic_store": {
    "name": "some_name"
  },
  "coverage": {
    "format": 0
  }
}
```

## com.cognite.seismic.Query.GetFileLineRange
Use [`com.cognite.seismic.v1.SeismicService.SearchSeismicStores`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) with [`include_extent`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#searchseismicstoresrequest) set to `true`.

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
  "file": {
    "name": "some_name"
  },
  "include_extent": true
}
```

Additionally, [`seismic`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic) objects also have the line range. They can be fetched from [`com.cognite.seismic.v1.SeismicService.SearchSeismics`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries).

### Payload example
#### v1:
```
{
  "seismic": {
    "id": "1234"
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
To get the closest trace to a given coordinate, [`com.cognite.seismic.v1.SeismicService.StreamTraces`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) can be used specifying the [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest) with [`interpolation_method`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.GeometryFilter) set to [`NEAREST_TRACE`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.InterpolationMethod), and a [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.Geometry) containing the coordinate of interest.

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_name",
  },
  "coordinates": {
    "x": 10,
    "y": 20
  }
}
```
#### v1:
```
{
  "seismic": {
    "id": "1234"
  },
  "geometry": {
    "geometry": {
      "wkt": {
        "geometry": "POINT(10 20)"
      }
    }
  }
}
```

## com.cognite.seismic.Query.GetSliceByLine
**Deprecated**

See [`com.cognite.seismic.Query.GetVolume`](##com.cognite.seismic.Query.GetVolume)

## com.cognite.seismic.Query.GetSliceByGeometry
Use [`com.cognite.seismic.v1.SeismicService.StreamTraces`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest).

See [`com.cognite.seismic.Query.GetTraceByCoordinates`](##com.cognite.seismic.Query.GetTraceByCoordinates).

## com.cognite.seismic.Query.GetCubeByLines
**Deprecated**

See [`com.cognite.seismic.Query.GetVolume`](##com.cognite.seismic.Query.GetVolume)

## com.cognite.seismic.Query.GetCubeByGeometry
Use [`com.cognite.seismic.v1.SeismicService.StreamTraces`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest).

See [`com.cognite.seismic.Query.GetTraceByCoordinates`](##com.cognite.seismic.Query.GetTraceByCoordinates).

## com.cognite.seismic.Query.GetSegYFile
Use [com.cognite.seismic.v1.SeismicService.GetSegYFile](com.cognite.seismic.v1.SeismicService.GetSegYFile) instead.

## com.cognite.seismic.Query.GetSlabByLines
Use [`com.cognite.seismic.v1.SeismicService.StreamTraces`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the [`three_dee_extent`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest) containing a [`rect`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic3dExtent) with the desired [`inline_range`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic3dRect) and [`xline_range`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.Seismic3dRect), and the [`z_range`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest) range of the slab.

#### v1:
```
{
  "seismic": {
    "id": "1234"
  },
  "three_dee_extent": {
    "rects": {
      "rects": {
        "inline_range": {
          "min": 2,
          "max": 22,
          "step": 4
        },
        "xline_range": {
          "min": 1,
          "max": 5
        }
      }
    },
  },
  "z_range": {
    "min": 100,
    "max": 200
  },
}
```

## com.cognite.seismic.Query.GetTimeSliceByGeometry
Use [`com.cognite.seismic.v1.SeismicService.StreamTraces`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#metadata-queries) passing in the desired [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest) with a [`z_range`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#streamtracesrequest) contaning the depth of interest, and a [`geometry`](https://docs.cognite.com/dev/guides/sdk/seismic/api/v1/#com.cognite.seismic.v1.GeometryFilter) desired.

See [`com.cognite.seismic.Query.GetSliceByGeometry`](##com.cognite.seismic.Query.GetSliceByGeometry).

### Payload example
#### v0:
```
{
  "file": {
    "name": "some_file"
  },
  "geometry": {
    "wkt": {
      "geometry": "POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))"
    }
  },
  "z": 20
}
```
#### v1:
```
{
  "seismic": {
    "id": "1234"
  },
  "geometry": {
    "geometry": {
      "wkt": {
        "geometry": "POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))"
      }
    }
  },
  "z_range": {
    "min": 20,
    "max": 20
  }
}
```

## com.cognite.seismic.Query.GetVolume
Use [com.cognite.seismic.v1.SeismicService.StreamTraces](com.cognite.seismic.v1.SeismicService.StreamTraces) instead.
