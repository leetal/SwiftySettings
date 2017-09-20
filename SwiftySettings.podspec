Pod::Spec.new do |s|
  s.name = 'SwiftySettings'
  s.version = '1.0.0'
  s.license = 'MIT'
  s.summary = 'Declarative in-app settings stack in Swift'
  s.homepage = 'https://github.com/leetal/SwiftySettings'
  s.authors = { 'Tomasz Gebarowski' => 'gebarowski@gmail.com', 'Alexander Widerberg' => 'widerbergaren@gmail.com' }
  s.source = { :git => 'https://github.com/leetal/SwiftySettings.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Source/**/*.swift'
  s.requires_arc = true
end
