class CreateHaikus < ActiveRecord::Migration
  def change
    create_table :haikus do |t|
      t.text :poem

      t.timestamps
    end
  end
end
