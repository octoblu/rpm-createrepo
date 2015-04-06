#!/usr/bin/env sh

BUCKET_URL=s3://${S3_BUCKET_NAME}

aws s3 sync $BUCKET_URL /tmp/rpms

mkdir -p /tmp/rpms/repodata
mv /tmp/rpms/repodata /tmp/rpms/${S3_LOCAL_PATH}/

createrepo /tmp/rpms/${S3_LOCAL_PATH}

mv /tmp/rpms/${S3_LOCAL_PATH}/repodata /tmp/rpms/

aws s3 sync /tmp/rpms $BUCKET_URL
