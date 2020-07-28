require_relative "./node.rb"

class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    if @head == nil
      @head = Node.new(surname)
    else
      node = @head
      while node.next_node != nil
        node = node.next_node
      end
      node.next_node = Node.new(surname)
    end
  end

  def links
    links = []
    node = @head
    while node.next_node != nil
      links << node
      node = node.next_node
    end
    links << node
  end

  def count
    links.length
  end

  def to_string
    links.map do |node|
      node = node.surname.to_s
      "the #{node} family"
    end.join(', followed by ')
  end
end
