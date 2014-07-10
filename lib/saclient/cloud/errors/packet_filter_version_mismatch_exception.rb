# -*- encoding: UTF-8 -*-

require_relative 'http_conflict_exception'

module Saclient
  module Cloud
    module Errors

      # 要求された操作を行えません. 起動中のサーバが収容されているハイパーバイザとパケットフィルタのバージョンが合致しません. コントロールパネルまたはAPIからの操作によりサーバを一旦停止し, 再度起動後にお試しください.
      class PacketFilterVersionMismatchException < Saclient::Cloud::Errors::HttpConflictException

        # (static var) @@default_message = '要求された操作を行えません。起動中のサーバが収容されているハイパーバイザとパケットフィルタのバージョンが合致しません。コントロールパネルまたはAPIからの操作によりサーバを一旦停止し、再度起動後にお試しください。'

      end

    end
  end
end