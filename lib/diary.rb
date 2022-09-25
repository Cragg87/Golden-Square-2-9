class Diary # stores diary entries

  def initialize
    @diary_entries = []
    @phone_numbers = []
  end

  def add(entry) # entry is an instance of DiaryEntry class
    @diary_entries << entry
  end

  def diary_entries
    @diary_entries
  end
    
  def search(wpm, time)
    words = wpm*time
    @diary_entries.each do |entry|
      if entry.split.size <= words
        return entry
      end
    end
  end

  def add_number(number)
    @phone_numbers << number
  end

  def numbers
    @phone_numbers
  end
end