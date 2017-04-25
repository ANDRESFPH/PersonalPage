class RenameTableEducation < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :educations, :studies
  end

  def self.down
    rename_table :studies, :educations
  end
end
