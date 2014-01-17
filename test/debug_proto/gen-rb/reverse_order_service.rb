#
# Autogenerated by Thrift Compiler (0.9.0-dev)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module ReverseOrderService
  class Client
    include ::Thrift::Client

    def myMethod(first, second, third, fourth)
      send_myMethod(first, second, third, fourth)
      recv_myMethod()
    end

    def send_myMethod(first, second, third, fourth)
      send_message('myMethod', MyMethod_args, :first => first, :second => second, :third => third, :fourth => fourth)
    end

    def recv_myMethod()
      result = receive_message(MyMethod_result)
      return
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class MyMethod_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    FIRST = 4
    SECOND = 3
    THIRD = 2
    FOURTH = 1

    FIELDS = {
      FIRST => {:type => ::Thrift::Types::STRING, :name => 'first'},
      SECOND => {:type => ::Thrift::Types::I16, :name => 'second'},
      THIRD => {:type => ::Thrift::Types::I32, :name => 'third'},
      FOURTH => {:type => ::Thrift::Types::I64, :name => 'fourth'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class MyMethod_result
    include ::Thrift::Struct, ::Thrift::Struct_Union

    FIELDS = {

    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  # SERVICE MOCK

  class Mock
    def myMethod(first, second, third, fourth)
    end

  end
end
