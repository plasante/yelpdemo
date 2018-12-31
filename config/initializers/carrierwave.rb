CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                                         # required
  config.fog_credentials = {
    provider:              'AWS',                                         # required
    aws_access_key_id:     'AKIAJ6XJ6TBOOULKGQDA',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',    # required unless using use_iam_profile
    region:                'ca-central-1',
    path_style:            true
  }
  config.fog_directory  = 'pierrotlasante'                                # required
  
end