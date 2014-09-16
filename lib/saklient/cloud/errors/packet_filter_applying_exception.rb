# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_conflict_exception'

module Saklient
  module Cloud
    module Errors

      # 要求された操作を行えません. 起動中のサーバに対して変更されたパケットフィルタを反映するタスクが既に実行中です.
      class PacketFilterApplyingException < Saklient::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。起動中のサーバに対して変更されたパケットフィルタを反映するタスクが既に実行中です。'

      end

    end
  end
end