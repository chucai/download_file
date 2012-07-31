# -*- encoding: utf-8 -*- 
#
require 'spec_helper'

describe DownloadFile::Fetch do
  it "should respond to get method" do
		DownloadFile::Fetch.respond_to? :get	
	end

 	it "should get json data" do
 		result = DownloadFile::Fetch.get("2011-09-03", "2011-09-04")
 		result.is_a?Hash.should be_true
		result["2011-09-03"].size.should == 2
 	end

	it "should download file from url " do
	  url = "http://1.202.208.20:80/video/2fea43ba8fbea21b.flv"
		DownloadFile::Fetch.download(url, "test.flv", "2012-09-03").should be_true
	end


end
