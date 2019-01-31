Pod::Spec.new do |s|

  s.ios.deployment_target = '8.0'
 
  s.requires_arc = true
  s.name         = "VEndPoint"

  s.version      = "0.1.0"

  s.summary      = "VEndPoint - Library"



  s.description  = "VEndPoint Library for Easy End Point creation "

  s.homepage     = "https://github.com/Vinsi/VEndPoint"


  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }


  s.author             = { "Vinsi" => "leo.winc@gmail.com" }

 
  s.source       = { :git => "https://github.com/Vinsi/VEndPoint.git" , :tag => "#{s.version}"}


  s.source_files = "VEndPoint/**/*.{swift}"

   s.resources = ""
  s.exclude_files = "Classes/Exclude"



  s.dependency 'Alamofire', '~> 4.5'






end

