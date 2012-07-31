require 'spec_helper'

describe DownloadFile::Configurable do
	
	it "should render setting " do
		settings = DownloadFile::Configurable.settings

		settings.dir.should == "files"
		settings.fetch_url.should == "http://1.202.208.20/abctest"
	end

end
