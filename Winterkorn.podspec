Pod::Spec.new do |s|
  s.name         = 'Winterkorn'
  s.version      = '0.0.1'
  s.summary      = 'A library for increasing the speed and urgency of your development in Swift.'
  s.homepage     = 'https://github.com/neonichu/Winterkorn'
  s.license      = 'MIT'

  s.author             = { 'Boris Bügling' => 'boris@buegling.com' }
  s.social_media_url   = 'http://twitter.com/NeoNacho'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'

  s.frameworks   = 'XCTest'
  s.source       = { :git => 'https://github.com/neonichu/Winterkorn.git',
                     :tag => s.version }
  s.source_files = 'Winterkorn.swift'
end
