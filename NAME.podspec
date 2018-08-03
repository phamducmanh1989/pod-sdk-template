#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://phamducmanh1989@github.com/phamducmanh1989/${POD_NAME}'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Manh Pham' => 'phamducmanh1989@gmail.com' }
  s.source           = { :git => 'https://phamducmanh1989@github.com/phamducmanh1989/${POD_NAME}.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.public_header_files = [
  ]
  s.source_files = '${POD_NAME}/Classes/**/*.{h,m}'
  s.subspec '${POD_NAME}SubSpec' do |sub_spec|
      sub_spec.dependency 'ReactiveObjC', '~>2.1.2'
      sub_spec.dependency 'MPCore', '0.1.11'   
  end
  s.static_framework = true
  s.default_subspec = '${POD_NAME}SubSpec'
  s.resources = ['${POD_NAME}/Assets/*.png', '${POD_NAME}/Assets/*.bundle']
  s.resource_bundles = {
        '${POD_NAME}' => ['${POD_NAME}/Assets/*.png', '${POD_NAME}/Assets/*.bundle']
    }
    s.prefix_header_contents =  '#import <ReactiveObjC/ReactiveObjC.h>',
    '#import <MPCore/MPCore.h>'
end
