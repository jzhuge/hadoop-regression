load test_helper

@test "kms daemonlog" {
  [[ $TEST_DAEMONLOG == true ]] || skip
  hadoop daemonlog -getlevel $TEST_HOST:$TEST_KMS_PORT \
    org.apache.hadoop.crypto.key.kms.server.KMS
}
