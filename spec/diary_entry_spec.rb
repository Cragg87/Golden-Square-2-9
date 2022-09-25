require_relative '../lib/diary_entry.rb'

RSpec.describe DiaryEntry do
  context 'an entry is passed as a string' do
    it 'returns diary entry as a string' do
      diary_entry = DiaryEntry.new("String of four words")
      expect(diary_entry.entry).to eq "String of four words"
    end

    it 'returns number of words in an entry' do
      diary_entry = DiaryEntry.new("String of four words")
      expect(diary_entry.word_count).to eq 4
    end

    it 'returns phone number as string' do
      diary_entry = DiaryEntry.new("String containing number 07123456789")
      expect(diary_entry.phone_number).to eq "07123456789"
    end
  end
end
