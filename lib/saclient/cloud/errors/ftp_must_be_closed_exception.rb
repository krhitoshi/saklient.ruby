# -*- encoding: UTF-8 -*-

require_relative 'http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. リソースのFTP共有を終了した後に実行してください.
      class FtpMustBeClosedException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。リソースのFTP共有を終了した後に実行してください。'

      end

    end
  end
end