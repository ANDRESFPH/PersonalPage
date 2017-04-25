class AddUserToWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    add_reference :work_experiences, :user, foreign_key: true, type: :uuid
  end
end
