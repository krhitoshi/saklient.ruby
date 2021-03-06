# -*- encoding: UTF-8 -*-

# This code is automatically transpiled by Saklient Translator

require_relative '../../errors/saklient_exception'
require_relative '../client'
require_relative 'resource'

module Saklient
  module Cloud
    module Resources

      # ライセンス種別情報.
      class CommonServiceProvider < Saklient::Cloud::Resources::Resource

        protected

        # ID
        #
        # @return [String]
        attr_accessor :m_id

        # クラス {ECommonServiceClass}
        #
        # @return [String]
        attr_accessor :m_clazz

        # 名前
        #
        # @return [String]
        attr_accessor :m_name

        # @private
        # @return [String]
        def _api_path
          return '/commonserviceprovider'
        end

        # @private
        # @return [String]
        def _root_key
          return 'CommonServiceProvider'
        end

        # @private
        # @return [String]
        def _root_key_m
          return 'CommonServiceProviders'
        end

        public

        # @private
        # @return [String]
        def _class_name
          return 'CommonServiceProvider'
        end

        # @private
        # @return [String]
        def _id
          return get_id
        end

        # @private
        # @param [Saklient::Cloud::Client] client
        # @param [any] obj
        # @param [bool] wrapped
        def initialize(client, obj, wrapped = false)
          super(client)
          Saklient::Util::validate_type(client, 'Saklient::Cloud::Client')
          Saklient::Util::validate_type(wrapped, 'bool')
          api_deserialize(obj, wrapped)
        end

        protected

        # @return [bool]
        attr_accessor :n_id

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_id
          return @m_id
        end

        public

        # ID
        #
        # @return [String]
        attr_reader :id

        def id
          get_id
        end

        protected

        # @return [bool]
        attr_accessor :n_clazz

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_clazz
          return @m_clazz
        end

        public

        # クラス {ECommonServiceClass}
        #
        # @return [String]
        attr_reader :clazz

        def clazz
          get_clazz
        end

        protected

        # @return [bool]
        attr_accessor :n_name

        # (This method is generated in Translator_default#buildImpl)
        #
        # @private
        # @return [String]
        def get_name
          return @m_name
        end

        public

        # 名前
        #
        # @return [String]
        attr_reader :name

        def name
          get_name
        end

        protected

        # (This method is generated in Translator_default#buildImpl)
        #
        # @param [any] r
        def api_deserialize_impl(r)
          @is_new = (r).nil?
          r = {} if @is_new
          @is_incomplete = false
          if Saklient::Util::exists_path(r, 'ID')
            @m_id = (Saklient::Util::get_by_path(r, 'ID')).nil? ? nil : Saklient::Util::get_by_path(r, 'ID').to_s
          else
            @m_id = nil
            @is_incomplete = true
          end
          @n_id = false
          if Saklient::Util::exists_path(r, 'Class')
            @m_clazz = (Saklient::Util::get_by_path(r, 'Class')).nil? ? nil : Saklient::Util::get_by_path(r, 'Class').to_s
          else
            @m_clazz = nil
            @is_incomplete = true
          end
          @n_clazz = false
          if Saklient::Util::exists_path(r, 'Name')
            @m_name = (Saklient::Util::get_by_path(r, 'Name')).nil? ? nil : Saklient::Util::get_by_path(r, 'Name').to_s
          else
            @m_name = nil
            @is_incomplete = true
          end
          @n_name = false
        end

        # @private
        # @param [bool] withClean
        # @return [any]
        def api_serialize_impl(withClean = false)
          Saklient::Util::validate_type(withClean, 'bool')
          ret = {}
          Saklient::Util::set_by_path(ret, 'ID', @m_id) if withClean || @n_id
          Saklient::Util::set_by_path(ret, 'Class', @m_clazz) if withClean || @n_clazz
          Saklient::Util::set_by_path(ret, 'Name', @m_name) if withClean || @n_name
          return ret
        end

      end

    end
  end
end
