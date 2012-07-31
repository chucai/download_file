require 'spec_helper'

describe DownloadFile do

	#* 项目配置
	#* 获取json数据，已经按照日期就行了归类
	#* 下载文件
	#* 按照日期归类
	it "should should download file from server" do
		
		starttime = "2012-01-1"
		stoptime = "2012-02-1"
		
		params = { :start => starttime, :stop => stoptime }
		return_values = {"2012-01-1" => [{:url => "http://localhost/1.flv", :filename => "zhangsan", :created_at => "2012-01-1"}], "2012-01-2" => [{ :url => "http://localhost/2.flv", :filename => "lisimov", :created_at => "2012-01-2"}]}
		DownloadFile::Fetch.should_receive(:get).with(params).and_return(return_values)
		dates = DownloadFile::Fetch.get(params)
		dates.should == return_values

		url = return_values["2012-01-1"][0][:url]
		DownloadFile::Fetch.should_receive(:download).with(url).and_return(true)
		DownloadFile::Fetch.download(url).should be_true
	end

end
