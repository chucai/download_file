===下载文件的小工具

用于网站视频的自动备份

==Usage
运行命令
```
ruby bin/download.rb
```
就会下载视频文件

配置放在 
```lib/download_files/settings.rb```
文件中

开发过程中，使用了rspec的测试驱动开发
* init project
```ruby
bundle gem download_file
```
* add rspec support
update download_file.gemspec
```ruby
s.add_development_dependency "rspec"

s.add_development_dependency "active_support"
```
* create spec_helper.rb file

```ruby
require 'rubygems'

require 'bundler/setup'

Bundler.require(:default, :development)

RSpec.configure do |config|

  config.mock_with :rspec
	config.before(:each) do
	end 

end
```
* update Rakefile, set rspec default

```ruby
require 'rake'
require "bundler/gem_tasks"
desc 'Run all tests by default'
task :default do

  system("rspec spec --color")

end
```

增加了颜色支持 ：）

You are welcome! ~
