#!/usr/bin/env sh

BUCKET_URL=s3://${S3_BUCKET_NAME}

aws s3 sync $BUCKET_URL /tmp/rpms
createrepo /tmp/rpms
aws s3 sync /tmp/rpms $BUCKET_URL
