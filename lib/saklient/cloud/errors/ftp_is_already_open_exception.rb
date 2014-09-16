# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作を行えません. FTP共有は既に開始されています.
      class FtpIsAlreadyOpenException < Saklient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。FTP共有は既に開始されています。'

      end

    end
  end
end