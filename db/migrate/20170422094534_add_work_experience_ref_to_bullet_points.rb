class AddWorkExperienceRefToBulletPoints < ActiveRecord::Migration[5.0]
  def change
    add_reference :bullet_points, :work_experience, foreign_key: true, type: :uuid
  end
end
