const AWS = require('aws-sdk')
const moment = require('moment')

const kinesis = new AWS.Kinesis({ region: 'ap-northeast-1' })

const main = async () => {
  const json = {
    date: moment().subtract(90, 'seconds').toISOString()
  }
  const params = {
    Data: JSON.stringify(json) + '\n',
    PartitionKey: 'dummy',
    StreamName: 'log-infra-stream'
  }
  const res = await kinesis.putRecord(params).promise()
  console.log(res)
}

;(async () => {
  await main()
})()
