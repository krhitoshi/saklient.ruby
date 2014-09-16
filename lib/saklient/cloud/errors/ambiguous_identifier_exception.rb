# -*- encoding: UTF-8 -*-

require_relative '../../errors/http_not_found_exception'

module Saklient
  module Cloud
    module Errors

      # 対象が見つかりません. 識別名から一意にリソースを特定できません.
      class AmbiguousIdentifierException < Saklient::Errors::HttpNotFoundException

        # (static var) @@default_message = '対象が見つかりません。識別名から一意にリソースを特定できません。'

      end

    end
  end
end