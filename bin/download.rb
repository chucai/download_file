# -*- encoding: utf-8 -*- 
$:.unshift(File.expand_path("../../lib", __FILE__))
require 'download_file'

start = "2011-09-03"
stop  = "2011-09-04"

puts "开始下载文：从#{start}到#{stop}的所有视频文件"
DownloadFile::Download.download(start, stop)
