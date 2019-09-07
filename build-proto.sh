#!/bin/bash

pipenv run python -m grpc_tools.protoc --proto_path . --python_out . --grpc_python_out .  cognite/seismic/protos/*.proto