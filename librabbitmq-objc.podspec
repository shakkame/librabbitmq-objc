#
# Be sure to run `pod spec lint librabbitmq-objc.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.platform     = :ios, '5.0'
  s.name         = "librabbitmq-objc"
  s.version      = "0.0.3"
  s.summary      = "Objective-C wrapper for librabbitmq-c."
  s.homepage     = "https://github.com/shakkame/librabbitmq-objc"
  s.license      = 'GPL'
  s.author       = { "Shakka" => "info@shakka.me" }
  s.source       = { :git => "https://github.com/shakkame/librabbitmq-objc.git", :tag => "0.0.3"}
  
  s.requires_arc = true
  s.source_files = 'AMQP*.{h,m}', 'librabbitmq/amqp*.{h,c}', 'librabbitmq/unix/socket*.{h,c}', 'librabbitmq/unix/threads.h', 'librabbitmq/config.h'
  s.exclude_files = 'librabbitmq/amqp_cyassl.{h,c}', 'librabbitmq/amqp_gnutls.{h,c}', 'librabbitmq/amqp_openssl.{h,c}', 'librabbitmq/amqp_polarssl.{h,c}'

  s.compiler_flags = '-DHAVE_CONFIG_H'
end
