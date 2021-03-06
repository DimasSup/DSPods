#
# Be sure to run `pod lib lint HPManagedObjects.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HPManagedObjects'
  s.version          = '1.0.3'
  s.summary          = 'Lib with BaseManagedObjectModel that allow parse json and database'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DimasSup'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'GPL-3.0', :file => 'LICENSE' }
  s.author           = { 'DimasSup' => 'dima.teleban@gmail.com' }
  s.source           = { :git => 'https://github.com/DimasSup/HPManagedObjects.git', :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.resource_bundles = {
  #   'HPManagedObjects' => ['HPManagedObjects/Assets/*.png']
  # }

  s.subspec 'Main' do |main|
   main.source_files   = 'HPManagedObjects/Classes/{Main,HelpClasses}/**/*'
   main.public_header_files = 'HPManagedObjects/Classes/{Main,HelpClasses}/**/*.h'
  end

  s.subspec 'FMDB' do |fmdb|
   fmdb.source_files   = 'HPManagedObjects/Classes/FMDBSupport/**/*'

   fmdb.public_header_files = 'HPManagedObjects/Classes/FMDBSupport/**/*.h'
   fmdb.dependency 'HPManagedObjects/Main'
   fmdb.dependency 'FMDB'
  end


end
