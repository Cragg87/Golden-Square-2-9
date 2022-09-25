Problem:

As a user
So that I can *record my experiences*
I want to keep a regular *diary*

As a user
So that I can reflect on my experiences
I want to *read my past diary entries*

As a user
So that I can reflect on my experiences in my busy day
I want to *select diary entries* to read based on *how much time I have and my reading speed*

As a user
So that I can keep track of my tasks
I want to *keep a todo list* along with my diary
# not sure how this todo list interacts with the diary

As a user
So that I can keep track of my contacts
I want to see a *list of all of the mobile phone numbers in all my diary entries*

Design recipe:

```ruby
class Diary # stores diary entries

  def initialize
    # ...
  end

  def add(entry) # entry is an instance of DiaryEntry class
    # adds entry to array
  end

  def diary_entries
    # returns list containing all diary entries
  end

  **def reading_speed(wpm) # wpm is an integer representing how many words can 
                         # be read in a minute** DO I NEED THIS?
  end
    
  def search(wpm, time) # wpm is an integer representing how many words can
                        # be read in a minute.
                        # time is an integer representing how many minutes 
                        # the reader has.
    # searches for entries whose word count is less than or equal to 
    # wpm * time
  end

  def number_list(number) # number is a string
    # returns a list of phone numbers contained in all diary entries
  end

end

class DiaryEntry # single entries to give to Diary class instance 

  def initialize(entry) # entry is a string
  end

  def entry
    # returns entry as a string
  end

  def word_count
    # returns number of words in entry
  end

  def phone_number
    # extracts phone number from entry if present
    # returns phone number as string
  end

end

class TodoList # separate list of tasks

  def initialize
    # ...
  end

  def add(task) # task is an instance of Todo class
    # adds task to a list
  end

  def list
    # returns list of tasks
  end

end

class Todo # single tasks to be added to TodoList class instance

  def initialize(task) # task is a string
  end

  def task
  # returns task as a string

end

Integration Examples:

# 1. Returns a list of diary entries
diary = Diary.new
entry_1 = DiaryEntry.new("String of four words")
entry_2 = DiaryEntry.new("Another string of five words")
diary.add(entry_1)
diary.add(entry_2)
diary.diary_entries # => [entry_1, entry_2]

# 2. Returns first diary entry less than or equal to wpm * time
diary = Diary.new
entry_1 = DiaryEntry.new("String of four words")
entry_2 = DiaryEntry.new("Another string of five words")
diary.add(entry_1)
diary.add(entry_2)
diary.search(2, 2) # => [entry_1]

# 3. Returns list of phone numbers
diary = Diary.new
entry_1 = DiaryEntry.new("String containing number 07123456789")
entry_2 = DiaryEntry.new("Another string containing number 07000123456")
diary.add(entry_1)
diary.add(entry_2)
diary.number_list # => ["07123456789", "07000123456"]

# 4. Returns list of tasks
todo_list = TodoList.new
task_1 = Todo.new("Buy milk")
task_2 = Todo.new("Make tea")
todo_list.add(task_1)
todo_list.add(task_2)
todo_list.list # => [task_1, task_2]

Unit Examples (DiaryEntry):

# 1. Returns diary entry as a string
diary_entry = DiaryEntry.new("String of four words")
diary_entry.entry = "String of four words"

# 2. Returns number of words in an entry
diary_entry = DiaryEntry.new("String of four words")
diary_entry.word_count # => 4

# 3. Returns phone number as string
diary_entry = DiaryEntry.new("String containing number 07123456789")
diary_entry.phone_number # => "07123456789"

Unit Examples (TodoList):

# 1. Returns task entry as a string
todo = Todo.new("Buy milk")
todo.task = "Buy milk"