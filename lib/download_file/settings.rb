# -*- encoding: utf-8 -*- 
require 'active_support/configurable'
require 'singleton'

class Settings
	include ActiveSupport::Configurable
	include Singleton

	def initialize 
	  self.config.dir       = "files"
	  self.config.fetch_url = "your url"
	end

end
