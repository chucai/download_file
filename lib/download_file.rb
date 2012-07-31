# -*- encoding: utf-8 -*- 
#
require "download_file/version"
require "download_file/fetch"
require "download_file/configurable"

module DownloadFile

	class Download
		class << self
			def download(start, stop)
				count = 1
				datas = DownloadFile::Fetch.get(start, stop)
				datas.each do |key, value|
					value.each do |obj|
						puts "文件#{count}: #{obj['filename']}"
						DownloadFile::Fetch.download(obj["url"], obj["filename"], obj["created_at"])
						count = count + 1
					end
				end
			end
		end
	end

end
