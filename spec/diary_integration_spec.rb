require_relative '../lib/diary.rb'
require_relative '../lib/diary_entry.rb'
require_relative '../lib/todo_list.rb'
require_relative '../lib/todo.rb'

RSpec.describe "diary integration tests" do
  let(:diary) {Diary.new} 
  context 'entries are passed into Diary' do
    it 'returns a list of diary entries' do
    entry_1 = DiaryEntry.new("String of four words")
    entry_2 = DiaryEntry.new("Another string of five words")
    diary.add(entry_1.entry)
    diary.add(entry_2.entry)
    expect(diary.diary_entries).to eq ["String of four words", "Another string of five words"]
    end

    it 'returns first diary entry less than or equal to wpm * time' do
      entry_1 = DiaryEntry.new("String of four words")
      entry_2 = DiaryEntry.new("Another string of five words")
      diary.add(entry_1.entry)
      diary.add(entry_2.entry)
      expect(diary.search(2, 2)).to eq entry_1.entry
    end

    it 'returns list of phone numbers' do
      entry_1 = DiaryEntry.new("String containing number 07123456789")
      entry_2 = DiaryEntry.new("Another string containing number 07000123456")
      diary.add(entry_1.entry)
      diary.add(entry_2.entry)
      diary.add_number(entry_1.phone_number)
      diary.add_number(entry_2.phone_number)
      expect(diary.numbers).to eq ["07123456789", "07000123456"]
    end
  end

  context 'tasks are added to a todo list' do
    it 'returns list of tasks' do
      todo_list = TodoList.new
      task_1 = Todo.new("Buy milk")
      task_2 = Todo.new("Make tea")
      todo_list.add(task_1)
      todo_list.add(task_2)
      expect(todo_list.list).to eq [task_1, task_2]
    end
  end
end