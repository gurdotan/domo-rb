require File.join(File.dirname(__FILE__),"spec_helper")

describe "Domo" do

  it "should canonicalize 'www.ebay.com'" do
    Domo.canonicalize("www.ebay.com").should == "ebay.com"
  end

  it "should canonicalize 'motors.ebay.com'" do
    Domo.canonicalize("motors.ebay.com").should == "ebay.com"
  end

  it "should canonicalize 'www.ebay.co.uk'" do
    Domo.canonicalize("www.ebay.co.uk").should == "ebay.co.uk"
  end

  it "should canonicalize 'ebay.com'" do
    Domo.canonicalize("ebay.com").should == "ebay.com"
  end

  it "should strip 'http://www.ebay.com/shopping/1.html'" do
    Domo.strip_url("http://www.ebay.com/shopping/1.html").should == "www.ebay.com"
  end

end
