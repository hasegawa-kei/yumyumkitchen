CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    # Amazon S3用の設定
    :provider              => 'AWS',
    :region                => ENV['AWS_S3_REGION'],
    :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  }
  config.fog_directory     =  ENV['AWS_S3_BUCKET']
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
