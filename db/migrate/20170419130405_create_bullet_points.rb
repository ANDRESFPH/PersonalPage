class CreateBulletPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :bullet_points, id: :uuid do |t|
      t.text :description

      t.timestamps
    end
  end
end
