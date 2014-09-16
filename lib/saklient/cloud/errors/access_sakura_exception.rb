# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_forbidden_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作は許可されていません. さくらインターネットの会員メニューより認証後に実行してください.
      class AccessSakuraException < Saklient::Errors::HttpForbiddenException

        # (static var) @@default_message = '要求された操作は許可されていません。さくらインターネットの会員メニューより認証後に実行してください。'

      end

    end
  end
end