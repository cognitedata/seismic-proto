#!/bin/bash
# Build HTML and markdown docs from Protocol Buffer definitions,
# using https://github.com/pseudomuto/protoc-gen-doc

# Remove any existing built docs
test -d docs && rm -rf docs

# All protocol buffer files
# These include a number of proto files that aren't part of the API, notably persisted_trace.proto
# and ingest_job.proto. Those should probably be moved out of this repository.
PROTOFILES=$(find $PWD/cognite/seismic/protos -name '*.proto' -printf "protos/cognite/seismic/protos/%P ")

# Protocol buffer files describing the v0 API, in the process of being phased out
# Ideally this should be determined by just recursing through the imports in query_service.proto
# and ingest_service.proto
V0_PROTOS="query_service ingest_service query_service_messages ingest_service_messages types"
V0_PROTOFILES=$(for PROTO in $V0_PROTOS ; do echo protos/cognite/seismic/protos/${PROTO}.proto ; done )

# Protocol buffer files describing the v1 API.
# Ideally this should be determined by just recursing through the imports in v1/seismic_service.proto
V1_PROTOS="v1/seismic_service v1/seismic_service_messages v1/seismic_service_datatypes types"
V1_PROTOFILES=$(for PROTO in $V1_PROTOS ; do echo protos/cognite/seismic/protos/${PROTO}.proto ; done )


# Build HTML docs
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $PROTOFILES --doc_opt=html,all.html
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $V0_PROTOFILES --doc_opt=html,v0.html
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $V1_PROTOFILES --doc_opt=html,v1.html

# Build Markdown docs
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $PROTOFILES --doc_opt=markdown,docs.md
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $V0_PROTOFILES --doc_opt=markdown,v0.md
docker run --rm -v $(pwd)/docs/docs:/out -v $(pwd):/protos \
    pseudomuto/protoc-gen-doc -I/protos $V1_PROTOFILES --doc_opt=markdown,v1.md
