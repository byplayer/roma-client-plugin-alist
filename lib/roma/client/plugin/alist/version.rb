# -*- coding: utf-8 -*-
#
# = roma/client/version.rb
# This file is derived from roma client.
#
module Roma #:nodoc:
  module Client #:nodoc:
    module Plugin
      module AList
        # == AList version module
        module VERSION
          # major version
          MAJOR = 1

          # minor
          MINOR = 0

          # TINY version
          TINY  = 0

          # version string
          STRING = [MAJOR, MINOR, TINY].join('.')
        end
      end
    end
  end
end
