require File.expand_path(File.join('..', '..', '..', '..', 'spec_helper'),
                         File.dirname(__FILE__))

describe Roma::Client::ClientPlugin::AList::VERSION do
  context "version string" do
    it do
      Roma::Client::ClientPlugin::AList::VERSION::STRING.should ==
        "#{Roma::Client::ClientPlugin::AList::VERSION::MAJOR}." +
        "#{Roma::Client::ClientPlugin::AList::VERSION::MINOR}." +
        "#{Roma::Client::ClientPlugin::AList::VERSION::TINY}"
    end
  end
end
