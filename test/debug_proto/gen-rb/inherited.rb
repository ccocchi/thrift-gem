#
# Autogenerated by Thrift Compiler (0.9.0-dev)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module Inherited
  class Client < ::Srv::Client 
    include ::Thrift::Client

    def identity(arg)
      send_identity(arg)
      return recv_identity()
    end

    def send_identity(arg)
      send_message('identity', Identity_args, :arg => arg)
    end

    def recv_identity()
      result = receive_message(Identity_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'identity failed: unknown result')
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Identity_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    ARG = 1

    FIELDS = {
      ARG => {:type => ::Thrift::Types::I32, :name => 'arg'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Identity_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  # SERVICE MOCK

  class Mock
    def identity(arg)
      1
    end

  end
end

