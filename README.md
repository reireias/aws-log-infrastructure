[![Build Status](https://travis-ci.org/reireias/aws-log-infrastructure.svg?branch=master)](https://travis-ci.org/reireias/aws-log-infrastructure)
# aws-log-infrastructure
AWS Log Infrastructure = KDS - S3 - Athena.

## setup

```console
$ tfenv install
$ aws s3 mb s3://reireias-log-infrastructure-terraform
```

## put test log

```console
$ cd put-record
$ yarn install
$ node index.js
```
