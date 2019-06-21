#!/bin/bash

OBJECTS="$(ls object_detection/protos/)"
for OBJECT in ${OBJECTS};do
	PYTHON_OUT="${PYTHON_OUT} ./object_detection/protos/${OBJECT}"
done

protoc --python_out=. "${PYTHON_OUT}"
