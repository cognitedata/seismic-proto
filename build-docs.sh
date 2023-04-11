#!/bin/bash -e
# Build HTML and markdown docs from Protocol Buffer definitions,
# using https://github.com/pseudomuto/protoc-gen-doc

# Remove any existing built docs
test -d docs && rm -rf docs
test -d dockerout && rm -rf dockerout
mkdir -p docs/docs dockerout

# All protocol buffer files
# These include a number of proto files that aren't part of the API, notably persisted_trace.proto
# and ingest_job.proto. Those should probably be moved out of this repository.
PROTOFILES=$(find $PWD/cognite/seismic/protos -name '*.proto' | sed "s~$PWD/cognite/seismic/protos~protos/cognite/seismic/protos~")

# Protocol buffer files describing the v0 API, in the process of being phased out
# Ideally this should be determined by just recursing through the imports in query_service.proto
# and ingest_service.proto
V0_PROTOS="query_service ingest_service query_service_messages ingest_service_messages types"
V0_PROTOFILES=$(for PROTO in $V0_PROTOS ; do echo protos/cognite/seismic/protos/${PROTO}.proto ; done )

# Protocol buffer files describing the v1 API.
# Ideally this should be determined by just recursing through the imports in v1/seismic_service.proto
V1_PROTOS="v1/seismic_service v1/seismic_service_messages v1/seismic_service_datatypes types"
V1_PROTOFILES=$(for PROTO in $V1_PROTOS ; do echo protos/cognite/seismic/protos/${PROTO}.proto ; done )

API_PROTOFILES=$(for PROTO in $V1_PROTOS ${V0_PROTOS% types}; do echo protos/cognite/seismic/protos/${PROTO}.proto ; done )

# We use a separate directory for docker output, as docker creates
# files with odd ownership. We copy/edit outputs over to docs/docs later.
DOCKER_COMMAND="docker run --rm -v $(pwd)/template:/template -v $(pwd)/dockerout:/out -v $(pwd):/protos pseudomuto/protoc-gen-doc -I/protos"

# Build HTML docs and copy to output directory
$DOCKER_COMMAND $PROTOFILES --doc_opt=html,all.html
$DOCKER_COMMAND $API_PROTOFILES --doc_opt=html,index.html
$DOCKER_COMMAND $V0_PROTOFILES --doc_opt=html,v0.html
$DOCKER_COMMAND $V1_PROTOFILES --doc_opt=html,v1.html

cp dockerout/*.html docs/docs/

# Build Markdown docs
$DOCKER_COMMAND $PROTOFILES --doc_opt=/template/cog.markdown,all.md
$DOCKER_COMMAND $API_PROTOFILES --doc_opt=/template/cog.markdown,docs.md
$DOCKER_COMMAND $V0_PROTOFILES --doc_opt=/template/cog.markdown,v0.md
$DOCKER_COMMAND $V1_PROTOFILES --doc_opt=/template/cog.markdown,v1.md
$DOCKER_COMMAND $V0_PROTOFILES --doc_opt=json,v0.json
$DOCKER_COMMAND $V1_PROTOFILES --doc_opt=json,v1.json

# Copy markdown docs to output dir, but patch in a preamble first
for mdfile in dockerout/*.md; do
    cat markdown_preamble.md $mdfile > docs/docs/$(basename $mdfile)
done

# Copy json docs to output dir
cp dockerout/*json docs/docs/.

touch docs/docs/.nojekyll # Don't use Jekyll, we just publish the md files directly

rm -rf dockerout
