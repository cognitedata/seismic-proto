Cognite seismic APIs, query and ingestion are grpc based services building on protobuf files which can be found in this repo.

#### Structure and notes

We have two services - ingest and query. 
* All the rpc methods in these services can be found in 
[ingest_service.proto](cognite/seismic/protos/ingest_service.proto) 
and 
[query_service.proto](cognite/seismic/protos/query_service.proto). 
* The messages used in these methods can be found in 
[ingest_service_messages.proto](cognite/seismic/protos/ingest_service_messages.proto) 
and 
[query_service_messages.proto](cognite/seismic/protos/query_service_messages.proto). 
* Finally, some types that are common to both services are defined in [type.proto](cognite/seismic/protos/types.proto)

* Some of the query methods, notably the ones querying for lines or whole cubes, use grpc streaming to transfer the data. 
They will send each message as a trace and keep the connection open until all traces have been sent. 
Make sure your client is able to receive those.

* We use the word `File` to refer to a single seismic file/dataset/cube
* Surveys can have many files attached to them, with different attributes or processing stages, and every file must 
belong to a survey 

#### Generate clients

In case you want to use these services in python, please consider using our SDK instead of compiling the protobufs.
You can do so with `pip install cognite-seismic-sdk`

For other languages, you can find instructions on how to generate a client stub based on the files in this repo in https://grpc.io/docs/tutorials/

You will need a valid api-key to access the services using your client. This api-key must be included as metadata in any requests to the rpc methods.

You must also ensure that you are using a secure connection, although it is not necessary to generate a valid certificate for it. 

Finally, remember to set the maximum message length to a reasonable number. 
This is an example of how to do so (in python, but it applies to other languages as well):
```
import grpc 
import query_service_pb2_grpc as qserv

query_host = 'api.cognitedata.com:443'
credentials = grpc.ssl_channel_credentials()
channel = grpc.secure_channel(
                                target=query_host, 
                                credentials=credentials, 
                                options=[('grpc.max_receive_message_length', 10*1024*1024)]
                             )
query = qserv.QueryStub(channel)

```
_(The import query_service_pb2_grpc, in this case, is the file generated on the outcome of compiling the protobufs)_

#### Generate documentation in html locally

- Download the docker image for [protoc-gen-doc](https://github.com/pseudomuto/protoc-gen-doc) using 
`docker pull pseudomuto/protoc-gen-doc`

- Run the image using 

```sh
sudo docker run --rm \
  -v $(pwd)/doc:/out \
  -v $(pwd):/cognite/seismic/protos \
  pseudomuto/protoc-gen-doc \
  --doc_opt=:ingest_job.proto,persisted_trace.proto
```

_(We're using --doc_opt=: to remove files with internal messages that are not used by external services)_
