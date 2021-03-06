class CreateSubjects < ActiveRecord::Migration[5.0]
  def up
    create_table :subjects do |t|

      t.string "name", :limit => 50
      t.column "position", :integer
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
    drop_table :subjects
  end

end
