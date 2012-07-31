# -*- encoding: utf-8 -*- 
# fetch data from server
#
require 'active_support/json'
require 'net/http'
require 'uri'
require 'fileutils'

module DownloadFile
	module Fetch
		
		class << self
			def get(start = nil, stop = nil)
				#return false unless start || stop

				settings = DownloadFile::Configurable.settings				
				url = settings.fetch_url
				if start and stop 
					url = url + "?start=#{start}&stop=#{stop}"
				end
				uri = URI.parse url
				response = Net::HTTP.get_response(uri)
				body = response.body
				result = JSON.parse body
				result.sort
			end

			def download(url = "", filename = "", directory = "")
				return false if url.blank? or filename.blank?
				uri = URI.parse url
				settings = DownloadFile::Configurable.settings				
				Net::HTTP.start(uri.host, uri.port) do |http|
					resp = http.get(uri.request_uri)
				  dir_path = File.join(File.expand_path("../../../", __FILE__), settings.dir, directory)
					FileUtils.mkdir_p(dir_path) unless File.directory? dir_path
					file_path = File.join(dir_path, filename.gsub(/\//, "").gsub(" ","").gsub("：","-"))
					puts file_path
					open(file_path, "wb") do |file|
						file.write(resp.body) 
					end
				end
				true
			end

		end

	end
end

