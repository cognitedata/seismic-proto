This repository holds .proto files common to our seismic services/workers.
The projects in github.com/cognitedata/seismic and github.com/cognitedata/seismic already contain this project as a submodule and are able to compile the proto files to their respective languages (JVM and python) on their pipelines.

*** Generate documentation in html locally

- Download the docker image for protoc-gen-do (https://github.com/pseudomuto/protoc-gen-doc) using 
`docker pull pseudomuto/protoc-gen-doc`

- Navigate to the folder containing the .proto files (this)

- Run the image using 

```
sudo docker run --rm \
  -v $(pwd)/doc:/out \
  -v $(pwd):/protos \
  pseudomuto/protoc-gen-doc \
  --doc_opt=:ingest_job.proto,persisted_trace.proto
```

(We're using --doc_opt=: to remove files with internal messages that we do not want to include in the external docs)