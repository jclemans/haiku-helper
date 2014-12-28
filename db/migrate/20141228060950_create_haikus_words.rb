class CreateHaikusWords < ActiveRecord::Migration
  def change
    create_table :haikus_words do |t|
      t.integer :haiku_id
      t.integer :word_id
    end
  end
end
