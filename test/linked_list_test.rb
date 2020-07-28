require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/linked_list.rb"

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_it_has_attributes
   list = LinkedList.new
   assert_nil list.head
  end

  def test_append
   list = LinkedList.new
   list.append("West")
   assert_nil list.head.next_node
   assert_equal "West", list.head.surname
  end

  def test_append_another_node
   list = LinkedList.new
   list.append("Rhodes")
   list.append("Hardy")
   assert_equal 2, list.count
   assert_equal "the Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_count
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_to_string
   list = LinkedList.new
   list.append("West")
   assert_equal "the West family", list.to_string
  end

end
