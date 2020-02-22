CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    # Amazon S3用の設定
    provider: 'AWS',
    region: Rails.application.credentials.aws[:s3_region],
    aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
    aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key]
  }
  config.fog_directory     =  Rails.application.credentials.aws[:s3_bucket]
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  case Rails.env
    when 'production'
      config.fog_directory = 'railspotoforio'
      config.asset_host = 'https://railspotoforio.s3-ap-northeast-1.amazonaws.com'

    when 'development'
      config.fog_directory = 'railspotoforio'
      config.asset_host = 'https://railspotoforio.s3-ap-northeast-1.amazonaws.com'

    when 'test'
      config.fog_directory = 'railspotoforio'
      config.asset_host = 'https://railspotoforio.s3-ap-northeast-1.amazonaws.com'
  end
end

# 日本語ファイル名の設定
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
