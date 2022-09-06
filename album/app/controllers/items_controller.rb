class ItemsController < ApplicationController
  def index

    s3 = Aws::S3::Resource.new

    @buckets = s3.buckets
  end
end