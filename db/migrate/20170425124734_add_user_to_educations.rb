class AddUserToEducations < ActiveRecord::Migration[5.0]
  def change
    add_reference :educations, :user, foreign_key: true, type: :uuid
  end
end
