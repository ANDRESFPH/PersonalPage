class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations, id: :uuid do |t|
      t.string   :university_name
      t.datetime :start_date
      t.datetime :end_date
      t.string   :title
      t.string   :degree

      t.timestamps
    end
  end
end
