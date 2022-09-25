class DiaryEntry # single entries to give to Diary class instance 

  def initialize(entry)
    @entry = entry
  end

  def entry
    @entry
  end

  def word_count
    @entry.split.size
  end

  def phone_number
    @entry.scan(/\d/).join('')
  end
end