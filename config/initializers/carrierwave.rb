CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider => 'AWS',
    :aws_access_key_id => 'AKIAIC3U2HY6TEYADZZA',
    :aws_secret_access_key => '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'
  }
  config.fog_directory = 'bogoambientalstorage'
end
