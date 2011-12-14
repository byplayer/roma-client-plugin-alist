require File.expand_path(File.join('..', '..', '..', 'spec_helper'),
                         File.dirname(__FILE__))
require 'roma/client'

describe Roma::Client::Plugin::AList do
  it { pending "TODO: use mock"}

  context "normal case" do
    before(:all) do
      @client = Roma::Client::RomaClient.new(["127.0.0.1:12000", "127.0.0.1:12001"],
                                             [Roma::Client::Plugin::AList])
      @key = "test"
      @client.delete(@key)
    end

    subject { @client }

    it { subject.alist_empty?(@key).should == "NOT_FOUND" }
    it { subject.alist_push(@key, "test0").should == "STORED" }
    it { subject.alist_empty?(@key).should == "false" }
    it { subject.alist_length(@key).should == 1 }
    it { subject.alist_at(@key, 0).should == "test0" }

    it { subject.alist_push(@key, "test1").should == "STORED" }
    it { subject.alist_length(@key).should == 2 }
    it { subject.alist_at(@key, 0).should == "test0" }
    it { subject.alist_at(@key, 1).should == "test1" }
  end
end
