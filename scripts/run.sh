#!/usr/bin/env sh

aws s3 sync s3://$S3_BUCKET_NAME /tmp/rpms
createrepo /tmp/rpms
aws s3 sync /tmp/rpms/repodata s3://$S3_BUCKET_NAME/repodata
