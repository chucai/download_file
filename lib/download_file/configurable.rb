# -*- encoding: utf-8 -*- 
require 'download_file/settings'

module DownloadFile
	module Configurable
		class << self
			def settings
				Settings.instance.config
			end

		end
	end
end
