require_relative '../lib/todo.rb'

RSpec.describe Todo do
  it 'returns task entry as a string' do
    todo = Todo.new("Buy milk")
    expect(todo.task).to eq "Buy milk"
  end
end