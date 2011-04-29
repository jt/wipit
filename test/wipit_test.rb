$LOAD_PATH.unshift File.dirname(__FILE__)
require 'helper'

class WipitTest < Test::Unit::TestCase

  def test_basic_run
    assert_command '', "git add . && git commit -m 'WIP'"
  end

  def test_branch_run
    assert_command 'my_branch', "git checkout -b my_branch && git add . && git commit -m 'WIP'"
  end

  def test_two_branches_run
    assert_command 'my_branch my_branch2', "git checkout -b my_branch2 && git add . && git commit -m 'WIP'"
  end

  def test_branch_push_run
    assert_command 'my_branch -p', "git checkout -b my_branch && git add . && git commit -m 'WIP' && git push origin my_branch"
  end

  def test_push_branch_run
    assert_command '-p my_branch', "git checkout -b my_branch && git add . && git commit -m 'WIP' && git push origin my_branch"
  end

  def test_push_run
    assert_command '-p', "git add . && git commit -m 'WIP'"
  end
end
