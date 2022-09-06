require "aws-sdk-s3"
class ItemsController < ApplicationController
  def index
    client = Aws::S3::Client.new(
      access_key_id: Rails.application.credentials.dig(:aws, :access_key_id),
      secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
      region: Rails.application.credentials.dig(:aws, :region) 
    )

    s3 = Aws::S3::Resource.new(client: client)

    @buckets = s3.buckets
  end
end