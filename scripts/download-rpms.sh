#!/usr/bin/env sh

aws s3 sync s3://$S3_BUCKET_NAME /tmp/rpms
