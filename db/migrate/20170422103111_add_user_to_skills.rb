class AddUserToSkills < ActiveRecord::Migration[5.0]
  def change
    add_reference :skills, :user, foreign_key: true, type: :uuid
  end
end
