class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills, id: :uuid do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
