# string_wrapper_spec.rb
require 'p3'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      str = "hello"
      wrapper = StringWrapper.new(str)
      expect(wrapper.reverse).to eq(str.reverse)
    end
  end
  
  describe "#upcase" do
    it "converts the string to uppercase" do
      str = "hello"
      wrapper = StringWrapper.new(str)
      expect(wrapper.upcase).to eq(str.upcase)
    end
  end
  
  describe "#downcase" do
    it "converts the string to lowercase" do
      str = "HELLO"
      wrapper = StringWrapper.new(str)
      expect(wrapper.downcase).to eq(str.downcase)
    end
  end
end
