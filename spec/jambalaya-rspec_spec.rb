require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "JambalayaRspec" do
  before do
    @jambalaya = Jambalaya.squeeze(File.expand_path(File.dirname(__FILE__) + "/helloworld.js"),"exports",["require 'rubygems'","require 'rspec'"])
  end
  describe 'helloworld' do
  	subject {@jambalaya.HelloWorld}
  	it {should == 'HelloWorld!'}
  end
end
