class TodoList # separate list of tasks
  def initialize
    @list = []
  end

  def add(task) # task is an instance of Todo class
    @list << task
  end

  def list
    @list
  end

end
