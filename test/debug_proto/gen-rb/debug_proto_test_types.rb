#
# Autogenerated by Thrift Compiler (0.9.0-dev)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#


module SomeEnum
  ONE = 1
  TWO = 2
  VALUE_MAP = {1 => "ONE", 2 => "TWO"}
  VALID_VALUES = Set.new([ONE, TWO]).freeze
end

class Doubles
  include ::Thrift::Struct, ::Thrift::Struct_Union
  NAN = 1
  INF = 2
  NEGINF = 3
  REPEATING = 4
  BIG = 5
  SMALL = 6
  ZERO = 7
  NEGZERO = 8

  FIELDS = {
    NAN => {:type => ::Thrift::Types::DOUBLE, :name => 'nan'},
    INF => {:type => ::Thrift::Types::DOUBLE, :name => 'inf'},
    NEGINF => {:type => ::Thrift::Types::DOUBLE, :name => 'neginf'},
    REPEATING => {:type => ::Thrift::Types::DOUBLE, :name => 'repeating'},
    BIG => {:type => ::Thrift::Types::DOUBLE, :name => 'big'},
    SMALL => {:type => ::Thrift::Types::DOUBLE, :name => 'small'},
    ZERO => {:type => ::Thrift::Types::DOUBLE, :name => 'zero'},
    NEGZERO => {:type => ::Thrift::Types::DOUBLE, :name => 'negzero'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class OneOfEach
  include ::Thrift::Struct, ::Thrift::Struct_Union
  IM_TRUE = 1
  IM_FALSE = 2
  A_BITE = 3
  INTEGER16 = 4
  INTEGER32 = 5
  INTEGER64 = 6
  DOUBLE_PRECISION = 7
  SOME_CHARACTERS = 8
  ZOMG_UNICODE = 9
  WHAT_WHO = 10
  BASE64 = 11
  BYTE_LIST = 12
  I16_LIST = 13
  I64_LIST = 14

  FIELDS = {
    IM_TRUE => {:type => ::Thrift::Types::BOOL, :name => 'im_true'},
    IM_FALSE => {:type => ::Thrift::Types::BOOL, :name => 'im_false'},
    A_BITE => {:type => ::Thrift::Types::BYTE, :name => 'a_bite', :default => 127},
    INTEGER16 => {:type => ::Thrift::Types::I16, :name => 'integer16', :default => 32767},
    INTEGER32 => {:type => ::Thrift::Types::I32, :name => 'integer32'},
    INTEGER64 => {:type => ::Thrift::Types::I64, :name => 'integer64', :default => 10000000000},
    DOUBLE_PRECISION => {:type => ::Thrift::Types::DOUBLE, :name => 'double_precision'},
    SOME_CHARACTERS => {:type => ::Thrift::Types::STRING, :name => 'some_characters'},
    ZOMG_UNICODE => {:type => ::Thrift::Types::STRING, :name => 'zomg_unicode'},
    WHAT_WHO => {:type => ::Thrift::Types::BOOL, :name => 'what_who'},
    BASE64 => {:type => ::Thrift::Types::STRING, :name => 'base64', :binary => true},
    BYTE_LIST => {:type => ::Thrift::Types::LIST, :name => 'byte_list', :default => [
      1,
      2,
      3,
    ], :element => {:type => ::Thrift::Types::BYTE}},
    I16_LIST => {:type => ::Thrift::Types::LIST, :name => 'i16_list', :default => [
      1,
      2,
      3,
    ], :element => {:type => ::Thrift::Types::I16}},
    I64_LIST => {:type => ::Thrift::Types::LIST, :name => 'i64_list', :default => [
      1,
      2,
      3,
    ], :element => {:type => ::Thrift::Types::I64}}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Bonk
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TYPE = 1
  MESSAGE = 2

  FIELDS = {
    TYPE => {:type => ::Thrift::Types::I32, :name => 'type'},
    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Nesting
  include ::Thrift::Struct, ::Thrift::Struct_Union
  MY_BONK = 1
  MY_OOE = 2

  FIELDS = {
    MY_BONK => {:type => ::Thrift::Types::STRUCT, :name => 'my_bonk', :class => ::Bonk},
    MY_OOE => {:type => ::Thrift::Types::STRUCT, :name => 'my_ooe', :class => ::OneOfEach}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class HolyMoley
  include ::Thrift::Struct, ::Thrift::Struct_Union
  BIG = 1
  CONTAIN = 2
  BONKS = 3

  FIELDS = {
    BIG => {:type => ::Thrift::Types::LIST, :name => 'big', :element => {:type => ::Thrift::Types::STRUCT, :class => ::OneOfEach}},
    CONTAIN => {:type => ::Thrift::Types::SET, :name => 'contain', :element => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::STRING}}},
    BONKS => {:type => ::Thrift::Types::MAP, :name => 'bonks', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::STRUCT, :class => ::Bonk}}}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Backwards
  include ::Thrift::Struct, ::Thrift::Struct_Union
  FIRST_TAG2 = 2
  SECOND_TAG1 = 1

  FIELDS = {
    FIRST_TAG2 => {:type => ::Thrift::Types::I32, :name => 'first_tag2'},
    SECOND_TAG1 => {:type => ::Thrift::Types::I32, :name => 'second_tag1'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Empty
  include ::Thrift::Struct, ::Thrift::Struct_Union

  FIELDS = {

  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Wrapper
  include ::Thrift::Struct, ::Thrift::Struct_Union
  FOO = 1

  FIELDS = {
    FOO => {:type => ::Thrift::Types::STRUCT, :name => 'foo', :class => ::Empty}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class RandomStuff
  include ::Thrift::Struct, ::Thrift::Struct_Union
  A = 1
  B = 2
  C = 3
  D = 4
  MYINTLIST = 5
  MAPS = 6
  BIGINT = 7
  TRIPLE = 8

  FIELDS = {
    A => {:type => ::Thrift::Types::I32, :name => 'a'},
    B => {:type => ::Thrift::Types::I32, :name => 'b'},
    C => {:type => ::Thrift::Types::I32, :name => 'c'},
    D => {:type => ::Thrift::Types::I32, :name => 'd'},
    MYINTLIST => {:type => ::Thrift::Types::LIST, :name => 'myintlist', :element => {:type => ::Thrift::Types::I32}},
    MAPS => {:type => ::Thrift::Types::MAP, :name => 'maps', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRUCT, :class => ::Wrapper}},
    BIGINT => {:type => ::Thrift::Types::I64, :name => 'bigint'},
    TRIPLE => {:type => ::Thrift::Types::DOUBLE, :name => 'triple'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Base64
  include ::Thrift::Struct, ::Thrift::Struct_Union
  A = 1
  B1 = 2
  B2 = 3
  B3 = 4
  B4 = 5
  B5 = 6
  B6 = 7

  FIELDS = {
    A => {:type => ::Thrift::Types::I32, :name => 'a'},
    B1 => {:type => ::Thrift::Types::STRING, :name => 'b1', :binary => true},
    B2 => {:type => ::Thrift::Types::STRING, :name => 'b2', :binary => true},
    B3 => {:type => ::Thrift::Types::STRING, :name => 'b3', :binary => true},
    B4 => {:type => ::Thrift::Types::STRING, :name => 'b4', :binary => true},
    B5 => {:type => ::Thrift::Types::STRING, :name => 'b5', :binary => true},
    B6 => {:type => ::Thrift::Types::STRING, :name => 'b6', :binary => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class CompactProtoTestStruct
  include ::Thrift::Struct, ::Thrift::Struct_Union
  A_BYTE = 1
  A_I16 = 2
  A_I32 = 3
  A_I64 = 4
  A_DOUBLE = 5
  A_STRING = 6
  A_BINARY = 7
  TRUE_FIELD = 8
  FALSE_FIELD = 9
  EMPTY_STRUCT_FIELD = 10
  BYTE_LIST = 11
  I16_LIST = 12
  I32_LIST = 13
  I64_LIST = 14
  DOUBLE_LIST = 15
  STRING_LIST = 16
  BINARY_LIST = 17
  BOOLEAN_LIST = 18
  STRUCT_LIST = 19
  BYTE_SET = 20
  I16_SET = 21
  I32_SET = 22
  I64_SET = 23
  DOUBLE_SET = 24
  STRING_SET = 25
  BINARY_SET = 26
  BOOLEAN_SET = 27
  STRUCT_SET = 28
  BYTE_BYTE_MAP = 29
  I16_BYTE_MAP = 30
  I32_BYTE_MAP = 31
  I64_BYTE_MAP = 32
  DOUBLE_BYTE_MAP = 33
  STRING_BYTE_MAP = 34
  BINARY_BYTE_MAP = 35
  BOOLEAN_BYTE_MAP = 36
  BYTE_I16_MAP = 37
  BYTE_I32_MAP = 38
  BYTE_I64_MAP = 39
  BYTE_DOUBLE_MAP = 40
  BYTE_STRING_MAP = 41
  BYTE_BINARY_MAP = 42
  BYTE_BOOLEAN_MAP = 43
  LIST_BYTE_MAP = 44
  SET_BYTE_MAP = 45
  MAP_BYTE_MAP = 46
  BYTE_MAP_MAP = 47
  BYTE_SET_MAP = 48
  BYTE_LIST_MAP = 49

  FIELDS = {
    A_BYTE => {:type => ::Thrift::Types::BYTE, :name => 'a_byte'},
    A_I16 => {:type => ::Thrift::Types::I16, :name => 'a_i16'},
    A_I32 => {:type => ::Thrift::Types::I32, :name => 'a_i32'},
    A_I64 => {:type => ::Thrift::Types::I64, :name => 'a_i64'},
    A_DOUBLE => {:type => ::Thrift::Types::DOUBLE, :name => 'a_double'},
    A_STRING => {:type => ::Thrift::Types::STRING, :name => 'a_string'},
    A_BINARY => {:type => ::Thrift::Types::STRING, :name => 'a_binary', :binary => true},
    TRUE_FIELD => {:type => ::Thrift::Types::BOOL, :name => 'true_field'},
    FALSE_FIELD => {:type => ::Thrift::Types::BOOL, :name => 'false_field'},
    EMPTY_STRUCT_FIELD => {:type => ::Thrift::Types::STRUCT, :name => 'empty_struct_field', :class => ::Empty},
    BYTE_LIST => {:type => ::Thrift::Types::LIST, :name => 'byte_list', :element => {:type => ::Thrift::Types::BYTE}},
    I16_LIST => {:type => ::Thrift::Types::LIST, :name => 'i16_list', :element => {:type => ::Thrift::Types::I16}},
    I32_LIST => {:type => ::Thrift::Types::LIST, :name => 'i32_list', :element => {:type => ::Thrift::Types::I32}},
    I64_LIST => {:type => ::Thrift::Types::LIST, :name => 'i64_list', :element => {:type => ::Thrift::Types::I64}},
    DOUBLE_LIST => {:type => ::Thrift::Types::LIST, :name => 'double_list', :element => {:type => ::Thrift::Types::DOUBLE}},
    STRING_LIST => {:type => ::Thrift::Types::LIST, :name => 'string_list', :element => {:type => ::Thrift::Types::STRING}},
    BINARY_LIST => {:type => ::Thrift::Types::LIST, :name => 'binary_list', :element => {:type => ::Thrift::Types::STRING, :binary => true}},
    BOOLEAN_LIST => {:type => ::Thrift::Types::LIST, :name => 'boolean_list', :element => {:type => ::Thrift::Types::BOOL}},
    STRUCT_LIST => {:type => ::Thrift::Types::LIST, :name => 'struct_list', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Empty}},
    BYTE_SET => {:type => ::Thrift::Types::SET, :name => 'byte_set', :element => {:type => ::Thrift::Types::BYTE}},
    I16_SET => {:type => ::Thrift::Types::SET, :name => 'i16_set', :element => {:type => ::Thrift::Types::I16}},
    I32_SET => {:type => ::Thrift::Types::SET, :name => 'i32_set', :element => {:type => ::Thrift::Types::I32}},
    I64_SET => {:type => ::Thrift::Types::SET, :name => 'i64_set', :element => {:type => ::Thrift::Types::I64}},
    DOUBLE_SET => {:type => ::Thrift::Types::SET, :name => 'double_set', :element => {:type => ::Thrift::Types::DOUBLE}},
    STRING_SET => {:type => ::Thrift::Types::SET, :name => 'string_set', :element => {:type => ::Thrift::Types::STRING}},
    BINARY_SET => {:type => ::Thrift::Types::SET, :name => 'binary_set', :element => {:type => ::Thrift::Types::STRING, :binary => true}},
    BOOLEAN_SET => {:type => ::Thrift::Types::SET, :name => 'boolean_set', :element => {:type => ::Thrift::Types::BOOL}},
    STRUCT_SET => {:type => ::Thrift::Types::SET, :name => 'struct_set', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Empty}},
    BYTE_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_byte_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::BYTE}},
    I16_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'i16_byte_map', :key => {:type => ::Thrift::Types::I16}, :value => {:type => ::Thrift::Types::BYTE}},
    I32_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'i32_byte_map', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::BYTE}},
    I64_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'i64_byte_map', :key => {:type => ::Thrift::Types::I64}, :value => {:type => ::Thrift::Types::BYTE}},
    DOUBLE_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'double_byte_map', :key => {:type => ::Thrift::Types::DOUBLE}, :value => {:type => ::Thrift::Types::BYTE}},
    STRING_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'string_byte_map', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::BYTE}},
    BINARY_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'binary_byte_map', :key => {:type => ::Thrift::Types::STRING, :binary => true}, :value => {:type => ::Thrift::Types::BYTE}},
    BOOLEAN_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'boolean_byte_map', :key => {:type => ::Thrift::Types::BOOL}, :value => {:type => ::Thrift::Types::BYTE}},
    BYTE_I16_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_i16_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::I16}},
    BYTE_I32_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_i32_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::I32}},
    BYTE_I64_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_i64_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::I64}},
    BYTE_DOUBLE_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_double_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::DOUBLE}},
    BYTE_STRING_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_string_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::STRING}},
    BYTE_BINARY_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_binary_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::STRING, :binary => true}},
    BYTE_BOOLEAN_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_boolean_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::BOOL}},
    LIST_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'list_byte_map', :key => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::BYTE}}, :value => {:type => ::Thrift::Types::BYTE}},
    SET_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'set_byte_map', :key => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::BYTE}}, :value => {:type => ::Thrift::Types::BYTE}},
    MAP_BYTE_MAP => {:type => ::Thrift::Types::MAP, :name => 'map_byte_map', :key => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::BYTE}}, :value => {:type => ::Thrift::Types::BYTE}},
    BYTE_MAP_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_map_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::BYTE}}},
    BYTE_SET_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_set_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::BYTE}}},
    BYTE_LIST_MAP => {:type => ::Thrift::Types::MAP, :name => 'byte_list_map', :key => {:type => ::Thrift::Types::BYTE}, :value => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::BYTE}}}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class SingleMapTestStruct
  include ::Thrift::Struct, ::Thrift::Struct_Union
  I32_MAP = 1

  FIELDS = {
    I32_MAP => {:type => ::Thrift::Types::MAP, :name => 'i32_map', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::I32}}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field i32_map is unset!') unless @i32_map
  end

  ::Thrift::Struct.generate_accessors self
end

class ExceptionWithAMap < ::Thrift::Exception
  include ::Thrift::Struct, ::Thrift::Struct_Union
  BLAH = 1
  MAP_FIELD = 2

  FIELDS = {
    BLAH => {:type => ::Thrift::Types::STRING, :name => 'blah'},
    MAP_FIELD => {:type => ::Thrift::Types::MAP, :name => 'map_field', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class BlowUp
  include ::Thrift::Struct, ::Thrift::Struct_Union
  B1 = 1
  B2 = 2
  B3 = 3
  B4 = 4

  FIELDS = {
    B1 => {:type => ::Thrift::Types::MAP, :name => 'b1', :key => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}}}},
    B2 => {:type => ::Thrift::Types::MAP, :name => 'b2', :key => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}}}},
    B3 => {:type => ::Thrift::Types::MAP, :name => 'b3', :key => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}}}},
    B4 => {:type => ::Thrift::Types::MAP, :name => 'b4', :key => {:type => ::Thrift::Types::LIST, :element => {:type => ::Thrift::Types::I32}}, :value => {:type => ::Thrift::Types::SET, :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}}}}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class ReverseOrderStruct
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

class StructWithSomeEnum
  include ::Thrift::Struct, ::Thrift::Struct_Union
  BLAH = 1

  FIELDS = {
    BLAH => {:type => ::Thrift::Types::I32, :name => 'blah', :enum_class => ::SomeEnum}
  }

  def struct_fields; FIELDS; end

  def validate
    unless @blah.nil? || ::SomeEnum::VALID_VALUES.include?(@blah)
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field blah!')
    end
  end

  ::Thrift::Struct.generate_accessors self
end

class TestUnion < ::Thrift::Union
  include ::Thrift::Struct_Union
  class << self
    def string_field(val)
      TestUnion.new(:string_field, val)
    end

    def i32_field(val)
      TestUnion.new(:i32_field, val)
    end

    def struct_field(val)
      TestUnion.new(:struct_field, val)
    end

    def struct_list(val)
      TestUnion.new(:struct_list, val)
    end

    def other_i32_field(val)
      TestUnion.new(:other_i32_field, val)
    end

    def enum_field(val)
      TestUnion.new(:enum_field, val)
    end

    def i32_set(val)
      TestUnion.new(:i32_set, val)
    end

    def i32_map(val)
      TestUnion.new(:i32_map, val)
    end
  end

  STRING_FIELD = 1
  I32_FIELD = 2
  STRUCT_FIELD = 3
  STRUCT_LIST = 4
  OTHER_I32_FIELD = 5
  ENUM_FIELD = 6
  I32_SET = 7
  I32_MAP = 8

  FIELDS = {
    # A doc string
    STRING_FIELD => {:type => ::Thrift::Types::STRING, :name => 'string_field'},
    I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'i32_field'},
    STRUCT_FIELD => {:type => ::Thrift::Types::STRUCT, :name => 'struct_field', :class => ::OneOfEach},
    STRUCT_LIST => {:type => ::Thrift::Types::LIST, :name => 'struct_list', :element => {:type => ::Thrift::Types::STRUCT, :class => ::RandomStuff}},
    OTHER_I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'other_i32_field'},
    ENUM_FIELD => {:type => ::Thrift::Types::I32, :name => 'enum_field', :enum_class => ::SomeEnum},
    I32_SET => {:type => ::Thrift::Types::SET, :name => 'i32_set', :element => {:type => ::Thrift::Types::I32}},
    I32_MAP => {:type => ::Thrift::Types::MAP, :name => 'i32_map', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::I32}}
  }

  def struct_fields; FIELDS; end

  def validate
    raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
    if get_set_field == :enum_field
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field enum_field!') unless ::SomeEnum::VALID_VALUES.include?(get_value)
    end
  end

  ::Thrift::Union.generate_accessors self
end

class TestUnionMinusStringField < ::Thrift::Union
  include ::Thrift::Struct_Union
  class << self
    def i32_field(val)
      TestUnionMinusStringField.new(:i32_field, val)
    end

    def struct_field(val)
      TestUnionMinusStringField.new(:struct_field, val)
    end

    def struct_list(val)
      TestUnionMinusStringField.new(:struct_list, val)
    end

    def other_i32_field(val)
      TestUnionMinusStringField.new(:other_i32_field, val)
    end

    def enum_field(val)
      TestUnionMinusStringField.new(:enum_field, val)
    end

    def i32_set(val)
      TestUnionMinusStringField.new(:i32_set, val)
    end

    def i32_map(val)
      TestUnionMinusStringField.new(:i32_map, val)
    end
  end

  I32_FIELD = 2
  STRUCT_FIELD = 3
  STRUCT_LIST = 4
  OTHER_I32_FIELD = 5
  ENUM_FIELD = 6
  I32_SET = 7
  I32_MAP = 8

  FIELDS = {
    I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'i32_field'},
    STRUCT_FIELD => {:type => ::Thrift::Types::STRUCT, :name => 'struct_field', :class => ::OneOfEach},
    STRUCT_LIST => {:type => ::Thrift::Types::LIST, :name => 'struct_list', :element => {:type => ::Thrift::Types::STRUCT, :class => ::RandomStuff}},
    OTHER_I32_FIELD => {:type => ::Thrift::Types::I32, :name => 'other_i32_field'},
    ENUM_FIELD => {:type => ::Thrift::Types::I32, :name => 'enum_field', :enum_class => ::SomeEnum},
    I32_SET => {:type => ::Thrift::Types::SET, :name => 'i32_set', :element => {:type => ::Thrift::Types::I32}},
    I32_MAP => {:type => ::Thrift::Types::MAP, :name => 'i32_map', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::I32}}
  }

  def struct_fields; FIELDS; end

  def validate
    raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
    if get_set_field == :enum_field
      raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field enum_field!') unless ::SomeEnum::VALID_VALUES.include?(get_value)
    end
  end

  ::Thrift::Union.generate_accessors self
end

class ComparableUnion < ::Thrift::Union
  include ::Thrift::Struct_Union
  class << self
    def string_field(val)
      ComparableUnion.new(:string_field, val)
    end

    def binary_field(val)
      ComparableUnion.new(:binary_field, val)
    end
  end

  STRING_FIELD = 1
  BINARY_FIELD = 2

  FIELDS = {
    STRING_FIELD => {:type => ::Thrift::Types::STRING, :name => 'string_field'},
    BINARY_FIELD => {:type => ::Thrift::Types::STRING, :name => 'binary_field', :binary => true}
  }

  def struct_fields; FIELDS; end

  def validate
    raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
  end

  ::Thrift::Union.generate_accessors self
end

class StructWithAUnion
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TEST_UNION = 1

  FIELDS = {
    TEST_UNION => {:type => ::Thrift::Types::STRUCT, :name => 'test_union', :class => ::TestUnion}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class PrimitiveThenStruct
  include ::Thrift::Struct, ::Thrift::Struct_Union
  BLAH = 1
  BLAH2 = 2
  BW = 3

  FIELDS = {
    BLAH => {:type => ::Thrift::Types::I32, :name => 'blah'},
    BLAH2 => {:type => ::Thrift::Types::I32, :name => 'blah2'},
    BW => {:type => ::Thrift::Types::STRUCT, :name => 'bw', :class => ::Backwards}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class StructWithASomemap
  include ::Thrift::Struct, ::Thrift::Struct_Union
  SOMEMAP_FIELD = 1

  FIELDS = {
    SOMEMAP_FIELD => {:type => ::Thrift::Types::MAP, :name => 'somemap_field', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::I32}}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field somemap_field is unset!') unless @somemap_field
  end

  ::Thrift::Struct.generate_accessors self
end

class BigFieldIdStruct
  include ::Thrift::Struct, ::Thrift::Struct_Union
  FIELD1 = 1
  FIELD2 = 45

  FIELDS = {
    FIELD1 => {:type => ::Thrift::Types::STRING, :name => 'field1'},
    FIELD2 => {:type => ::Thrift::Types::STRING, :name => 'field2'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class BreaksRubyCompactProtocol
  include ::Thrift::Struct, ::Thrift::Struct_Union
  FIELD1 = 1
  FIELD2 = 2
  FIELD3 = 3

  FIELDS = {
    FIELD1 => {:type => ::Thrift::Types::STRING, :name => 'field1'},
    FIELD2 => {:type => ::Thrift::Types::STRUCT, :name => 'field2', :class => ::BigFieldIdStruct},
    FIELD3 => {:type => ::Thrift::Types::I32, :name => 'field3'}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class TupleProtocolTestStruct
  include ::Thrift::Struct, ::Thrift::Struct_Union
  FIELD1 = -1
  FIELD2 = -2
  FIELD3 = -3
  FIELD4 = -4
  FIELD5 = -5
  FIELD6 = -6
  FIELD7 = -7
  FIELD8 = -8
  FIELD9 = -9
  FIELD10 = -10
  FIELD11 = -11
  FIELD12 = -12

  FIELDS = {
    FIELD1 => {:type => ::Thrift::Types::I32, :name => 'field1', :optional => true},
    FIELD2 => {:type => ::Thrift::Types::I32, :name => 'field2', :optional => true},
    FIELD3 => {:type => ::Thrift::Types::I32, :name => 'field3', :optional => true},
    FIELD4 => {:type => ::Thrift::Types::I32, :name => 'field4', :optional => true},
    FIELD5 => {:type => ::Thrift::Types::I32, :name => 'field5', :optional => true},
    FIELD6 => {:type => ::Thrift::Types::I32, :name => 'field6', :optional => true},
    FIELD7 => {:type => ::Thrift::Types::I32, :name => 'field7', :optional => true},
    FIELD8 => {:type => ::Thrift::Types::I32, :name => 'field8', :optional => true},
    FIELD9 => {:type => ::Thrift::Types::I32, :name => 'field9', :optional => true},
    FIELD10 => {:type => ::Thrift::Types::I32, :name => 'field10', :optional => true},
    FIELD11 => {:type => ::Thrift::Types::I32, :name => 'field11', :optional => true},
    FIELD12 => {:type => ::Thrift::Types::I32, :name => 'field12', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

COMPACT_TEST = ::CompactProtoTestStruct.new({
  %q"a_byte" => 127,
  %q"a_i16" => 32000,
  %q"a_i32" => 1000000000,
  %q"a_i64" => 1099511627775,
  %q"a_double" => 5.6789,
  %q"a_string" => %q"my string",
  %q"true_field" => true,
  %q"false_field" => false,
  %q"empty_struct_field" => ::Empty.new({
  }),
  %q"byte_list" => [
    -127,
    -1,
    0,
    1,
    127,
  ],
  %q"i16_list" => [
    -1,
    0,
    1,
    32767,
  ],
  %q"i32_list" => [
    -1,
    0,
    255,
    65535,
    16777215,
    2147483647,
  ],
  %q"i64_list" => [
    -1,
    0,
    255,
    65535,
    16777215,
    4294967295,
    1099511627775,
    281474976710655,
    72057594037927935,
    9223372036854775807,
  ],
  %q"double_list" => [
    0.1,
    0.2,
    0.3,
  ],
  %q"string_list" => [
    %q"first",
    %q"second",
    %q"third",
  ],
  %q"boolean_list" => [
    true,
    true,
    true,
    false,
    false,
    false,
  ],
  %q"struct_list" => [
    ::Empty.new({
    }),
    ::Empty.new({
    }),
  ],
  %q"byte_set" => Set.new([
    -127,
    -1,
    0,
    1,
    127,
  ]),
  %q"i16_set" => Set.new([
    -1,
    0,
    1,
    32767,
  ]),
  %q"i32_set" => Set.new([
    1,
    2,
    3,
  ]),
  %q"i64_set" => Set.new([
    -1,
    0,
    255,
    65535,
    16777215,
    4294967295,
    1099511627775,
    281474976710655,
    72057594037927935,
    9223372036854775807,
  ]),
  %q"double_set" => Set.new([
    0.1,
    0.2,
    0.3,
  ]),
  %q"string_set" => Set.new([
    %q"first",
    %q"second",
    %q"third",
  ]),
  %q"boolean_set" => Set.new([
    true,
    false,
  ]),
  %q"struct_set" => Set.new([
    ::Empty.new({
    }),
  ]),
  %q"byte_byte_map" => {
    1 => 2,
  },
  %q"i16_byte_map" => {
    1 => 1,
    -1 => 1,
    32767 => 1,
  },
  %q"i32_byte_map" => {
    1 => 1,
    -1 => 1,
    2147483647 => 1,
  },
  %q"i64_byte_map" => {
    0 => 1,
    1 => 1,
    -1 => 1,
    9223372036854775807 => 1,
  },
  %q"double_byte_map" => {
    -1.1 => 1,
    1.1 => 1,
  },
  %q"string_byte_map" => {
    %q"first" => 1,
    %q"second" => 2,
    %q"third" => 3,
    %q"" => 0,
  },
  %q"boolean_byte_map" => {
    true => 1,
    false => 0,
  },
  %q"byte_i16_map" => {
    1 => 1,
    2 => -1,
    3 => 32767,
  },
  %q"byte_i32_map" => {
    1 => 1,
    2 => -1,
    3 => 2147483647,
  },
  %q"byte_i64_map" => {
    1 => 1,
    2 => -1,
    3 => 9223372036854775807,
  },
  %q"byte_double_map" => {
    1 => 0.1,
    2 => -0.1,
    3 => 1e+06,
  },
  %q"byte_string_map" => {
    1 => %q"",
    2 => %q"blah",
    3 => %q"loooooooooooooong string",
  },
  %q"byte_boolean_map" => {
    1 => true,
    2 => false,
  },
  %q"list_byte_map" => {
    [
      1,
      2,
      3,
    ] => 1,
    [
      0,
      1,
    ] => 2,
    [
    ] => 0,
  },
  %q"set_byte_map" => {
    Set.new([
      1,
      2,
      3,
    ]) => 1,
    Set.new([
      0,
      1,
    ]) => 2,
    Set.new([
    ]) => 0,
  },
  %q"map_byte_map" => {
    {
      1 => 1,
    } => 1,
    {
      2 => 2,
    } => 2,
    {
    } => 0,
  },
  %q"byte_map_map" => {
    0 => {
    },
    1 => {
      1 => 1,
    },
    2 => {
      1 => 1,
      2 => 2,
    },
  },
  %q"byte_set_map" => {
    0 => Set.new([
    ]),
    1 => Set.new([
      1,
    ]),
    2 => Set.new([
      1,
      2,
    ]),
  },
  %q"byte_list_map" => {
    0 => [
    ],
    1 => [
      1,
    ],
    2 => [
      1,
      2,
    ],
  },
})

MYCONST = 2

MY_SOME_ENUM = 1

MY_SOME_ENUM_1 = 1

MY_ENUM_MAP = {
    1 =>   2,
}

EXTRA_CRAZY_MAP = {
    1 => ::StructWithSomeEnum.new({
    %q"blah" =>     2,
  }),
}

