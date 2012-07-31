# -*- encoding: utf-8 -*- 
require 'active_support/configurable'
require 'singleton'

class Settings
	include ActiveSupport::Configurable
	include Singleton

	def initialize 
	  self.config.dir       = "files"
	  self.config.fetch_url = "http://1.202.208.20/abctest"
	end

end
