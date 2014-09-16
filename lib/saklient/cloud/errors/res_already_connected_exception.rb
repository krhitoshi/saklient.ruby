# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作を行えません. このリソースは他のリソースと既に接続されています.
      class ResAlreadyConnectedException < Saklient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。このリソースは他のリソースと既に接続されています。'

      end

    end
  end
end