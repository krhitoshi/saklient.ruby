# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saclient
  module Cloud
    module Errors

      # HTTPエラー. Precondition Failed.
      class HttpPreconditionFailedException < Saclient::Cloud::Errors::HttpException

        # (static var) @@default_message = 'HTTPエラー。Precondition Failed.'

      end

    end
  end
end