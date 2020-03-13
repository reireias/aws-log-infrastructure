![test](https://github.com/reireias/aws-log-infrastructure/workflows/test/badge.svg)
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
