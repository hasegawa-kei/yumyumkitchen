# frozen_string_literal: true
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  elsif Rails.env.production?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: Rails.application.credentials.aws[:s3_region],
      aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
      aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key]
    }
    config.fog_directory = Rails.application.credentials.aws[:s3_bucket]
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
    config.asset_host = 'https://railspotoforio.s3-ap-northeast-1.amazonaws.com'
  end
end
