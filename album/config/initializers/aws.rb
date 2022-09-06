require "aws-sdk-s3"

Aws.config.update(
  access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
  secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
  region: Rails.application.credentials.dig(:aws, :region) 
)
