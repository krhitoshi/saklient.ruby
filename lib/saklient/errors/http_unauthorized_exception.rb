# -*- encoding: UTF-8 -*-

require_relative 'http_exception'

module Saklient
  module Errors

    # この操作は認証が必要です. IDまたはパスワードが誤っている可能性があります.
    class HttpUnauthorizedException < Saklient::Errors::HttpException

      # (static var) @@default_message = 'この操作は認証が必要です。IDまたはパスワードが誤っている可能性があります。'

    end

  end
end