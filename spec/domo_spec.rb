require File.join(File.dirname(__FILE__),"spec_helper")

describe "Domo" do

  it "should canonize 'www.ebay.com'" do
    Domo.canonize("www.ebay.com").should == "ebay.com"
  end

  it "should canonize 'motors.ebay.com'" do
    Domo.canonize("motors.ebay.com").should == "ebay.com"
  end

  it "should canonize 'www.ebay.co.uk'" do
    Domo.canonize("www.ebay.co.uk").should == "ebay.co.uk"
  end

  it "should canonize 'ebay.com'" do
    Domo.canonize("ebay.com").should == "ebay.com"
  end

  it "should strip 'http://www.ebay.com/shopping/1.html'" do
    Domo.strip_url("http://www.ebay.com/shopping/1.html").should == "www.ebay.com"
  end

end
