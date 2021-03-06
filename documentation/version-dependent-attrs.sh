#!/usr/bin/env bash

# Generates documentation/book/common/version-dependent-attrs.adoc
# according to the values in kafka-versions

. $(dirname $0)/../multi-platform-support.sh

FILE=$1

default_version=$($GREP -E '^[0-9.]+ +default' $FILE | $SED -E 's/(^[0-9.]+).*/\1/')

cat <<EOF
// Generated by documentation/version-dependent-attrs.sh during the build
// DO NOT EDIT BY HAND
:DefaultKafkaVersion: ${default_version}
EOF
