CarrierWave.configure do |config|

    config.fog_credentials = {
      provider:              'AWS',                            # required
      aws_access_key_id:     ENV["AKIA4GZCL6EDXG44HSU5"],            # required
      aws_secret_access_key: ENV["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"],            # required
      region:                ' us-east-1'                       # to match the carrierwave and bucket region
    }
    config.fog_directory = ENV["AWS_BUCKET"]                   # required
    config.fog_public    = false
    config.cache_dir     = "#{Rails.root}/tmp/uploads"         # To let CarrierWave work on Heroku
    config.storage       = :fog
  
  end