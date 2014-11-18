class RenamePoemColumn < ActiveRecord::Migration
  def change
    rename_column :haikus, :poem, :content
  end
end
