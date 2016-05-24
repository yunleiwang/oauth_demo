Rails.application.config.middleware.use OmniAuth::Builder do
  provider :weibo, '1978113365', '82fa3e1654c905b5b545a16945ahjiyb'
end