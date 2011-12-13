require File.expand_path(File.join('..', '..', '..', '..', 'spec_helper'),
                         File.dirname(__FILE__))

describe Roma::Client::Plugin::AList::VERSION do
  context "version string" do
    it do
      Roma::Client::Plugin::AList::VERSION::STRING.should ==
        "#{Roma::Client::Plugin::AList::VERSION::MAJOR}." +
        "#{Roma::Client::Plugin::AList::VERSION::MINOR}." +
        "#{Roma::Client::Plugin::AList::VERSION::TINY}"
    end
  end
end
