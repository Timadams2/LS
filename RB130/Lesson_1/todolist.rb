
# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.
# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title && description == otherTodo.description && done == otherTodo.done
  end
end

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def size
    @todos.size
  end
  
  def first
    @todos.first
  end
  
  def last
    @todos.last
  end
  
  def to_a
    @todos.clone
  end
  
  def done?
    @todos.all? { |todo| todo.done? }
  end
  
  def done!
    @todos.each { |todo| todo.done! }
  end
  
  def add(todo)
    @todos << todo
  end
  
  def shift
    @todos.shift
  end
  
  def pop
    @todos.pop
  end
  
  def item_at(index)
    @todos[index]
  end
  
  def mark_done_at(index)
    item_at(index).done!
  end
  
  def mark_undone_at(index)
    item_at(index).undone!
    
  end
  
  def remove_at(index)
    @todos.delete(item_at(index))
  end
  
  def each
    @todos.each do |todo| 
      yield(todo)
    end
    self
  end
  
  def select
    results = TodoList.new(title)
    each do |todo|
      results.add(todo) if yield(todo)
    end
    results
  end
  
  def find_by_title(string)
    each do |todo|
      return todo if todo.title == string
    end
  end
  
  def all_not_done
    select { |todo| todo.done? == false }
  end
  
  def all_done
    select { |todo| todo.done? }
  end
  
  def mark_undone(string)
    each do |todo|
      todo.done = false if todo.inspect == string.inspect
    end
  end
  
  def mark_done(string)
    each do |todo|
      todo.done = true if todo.inspect == string.inspect
    end
  end
  
  def mark_all_done
    each { |todo| todo.done! }
  end 
  
  def mark_all_undone
    each { |todo| todo.undone! }
  end
  
  def to_s
    each { |todo| puts todo }
  end
end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)