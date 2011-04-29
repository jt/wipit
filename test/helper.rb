$LOAD_PATH.unshift File.dirname(__FILE__) + '/../lib'
require 'test/unit'
require 'util_capture'
require 'wipit'

class Test::Unit::TestCase
  def Wipit(args)
    Wipit.process(*args.split(' '))
  end

  def assert_command(input, expected)
    assert_equal expected, Wipit(input)
  end
end
