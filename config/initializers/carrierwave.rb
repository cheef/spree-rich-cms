CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     Spree::Config['s3_access_key'].presence || ENV['S3_KEY'],
    aws_secret_access_key: Spree::Config['s3_secret'] || ENV['S3_SECRET'],
    region:                ENV['S3_REGION'] || 'us-east-1'
  }

  if Spree::Config['use_s3']
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = false
  end

  config.cache_dir = Rails.root.join('tmp/uploads')
  config.fog_directory = Spree::Config['s3_bucket']
end