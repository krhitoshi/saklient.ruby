# -*- encoding: UTF-8 -*-

require_relative '../client'
require_relative '../util'

module Saclient
  module Cloud
    module Resource

      # ディスク修正のパラメータ
      class DiskConfig

        protected

        # @private
        # @return [Saclient::Cloud::Client]
        attr_accessor :_client

        # @return [Saclient::Cloud::Client]
        def get_client
          return @_client
        end

        public

        # @return [Saclient::Cloud::Client]
        attr_reader :client

        def client
          get_client
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_disk_id

        # @return [String]
        def get_disk_id
          return @_disk_id
        end

        public

        # @return [String]
        attr_reader :disk_id

        def disk_id
          get_disk_id
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_host_name

        # @return [String]
        def get_host_name
          return @_host_name
        end

        # @param [String] v
        # @return [String]
        def set_host_name(v)
          @_host_name = v
          return v
        end

        public

        # @return [String]
        attr_accessor :host_name

        def host_name
          get_host_name
        end

        def host_name=(v)
          set_host_name(v)
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_password

        # @return [String]
        def get_password
          return @_password
        end

        # @param [String] v
        # @return [String]
        def set_password(v)
          @_password = v
          return v
        end

        public

        # @return [String]
        attr_accessor :password

        def password
          get_password
        end

        def password=(v)
          set_password(v)
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_ssh_key

        # @return [String]
        def get_ssh_key
          return @_ssh_key
        end

        # @param [String] v
        # @return [String]
        def set_ssh_key(v)
          @_ssh_key = v
          return v
        end

        public

        # @return [String]
        attr_accessor :ssh_key

        def ssh_key
          get_ssh_key
        end

        def ssh_key=(v)
          set_ssh_key(v)
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_ip_address

        # @return [String]
        def get_ip_address
          return @_ip_address
        end

        # @param [String] v
        # @return [String]
        def set_ip_address(v)
          @_ip_address = v
          return v
        end

        public

        # @return [String]
        attr_accessor :ip_address

        def ip_address
          get_ip_address
        end

        def ip_address=(v)
          set_ip_address(v)
        end

        protected

        # @private
        # @return [String]
        attr_accessor :_default_route

        # @return [String]
        def get_default_route
          return @_default_route
        end

        # @param [String] v
        # @return [String]
        def set_default_route(v)
          @_default_route = v
          return v
        end

        public

        # @return [String]
        attr_accessor :default_route

        def default_route
          get_default_route
        end

        def default_route=(v)
          set_default_route(v)
        end

        protected

        # @private
        # @return [Integer]
        attr_accessor :_network_mask_len

        # @return [Integer]
        def get_network_mask_len
          return @_network_mask_len
        end

        # @param [Integer] v
        # @return [Integer]
        def set_network_mask_len(v)
          @_network_mask_len = v
          return v
        end

        public

        # @return [Integer]
        attr_accessor :network_mask_len

        def network_mask_len
          get_network_mask_len
        end

        def network_mask_len=(v)
          set_network_mask_len(v)
        end

        # @private
        # @param [String] diskId
        # @param [Saclient::Cloud::Client] client
        def initialize(client, diskId)
          @_client = client
          @_disk_id = diskId
          @_host_name = nil
          @_password = nil
          @_ssh_key = nil
          @_ip_address = nil
          @_default_route = nil
          @_network_mask_len = nil
        end

        # *
        #
        # @return [DiskConfig]
        def write
          q = {}
          Saclient::Cloud::Util::set_by_path(q, 'HostName', @_host_name) if !(@_host_name).nil?
          Saclient::Cloud::Util::set_by_path(q, 'Password', @_password) if !(@_password).nil?
          Saclient::Cloud::Util::set_by_path(q, 'SSHKey.PublicKey', @_ssh_key) if !(@_ssh_key).nil?
          Saclient::Cloud::Util::set_by_path(q, 'UserIPAddress', @_ip_address) if !(@_ip_address).nil?
          Saclient::Cloud::Util::set_by_path(q, 'UserSubnet.DefaultRoute', @_default_route) if !(@_default_route).nil?
          Saclient::Cloud::Util::set_by_path(q, 'UserSubnet.NetworkMaskLen', @_network_mask_len) if !(@_network_mask_len).nil?
          path = '/disk/' + @_disk_id + '/config'
          result = @_client.request('PUT', path, q)
          return self
        end

      end

    end
  end
end