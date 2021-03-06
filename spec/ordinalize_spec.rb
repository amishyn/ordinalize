require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ordinalize" do
  [
   [1, "first"],
   [2, "second"],
   [3, "third"],
   [4, "fourth"],
   [5, "fifth"],
   [6, "sixth"],
   [7, "seventh"],
   [8, "eighth"],
   [9, "ninth"],
   [10, "tenth"],
   [11, "eleventh"],
   [12, "twelveth"],
   [13, "thirteenth"],
   [14, "fourteenth"],
   [15, "fifteenth"],
   [16, "sixteenth"],
   [17, "seventeenth"],
   [18, "eighteenth"],
   [19, "nineteenth"],
   [20, "twentieth"],
   [21, "twenty-first"],
   [22, "twenty-second"],
   [23, "twenty-third"],
   [24, "twenty-fourth"],
   [25, "twenty-fifth"],
   [26, "twenty-sixth"],
   [27, "twenty-seventh"],
   [28, "twenty-eighth"],
   [29, "twenty-ninth"],
   [1005, "one thousand and fifth"],
   [1024, "one thousand and twenty-fourth"]
  ].each do |num, expected|
    it "#{num} should be #{expected}" do
      num.full_ordinalize.should eql(expected)
    end
  end
  
  it "alternative spelling" do
    1.full_ordinalise.should eql("first")
  end
end
