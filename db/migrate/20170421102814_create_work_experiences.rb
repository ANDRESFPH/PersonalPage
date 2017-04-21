class CreateWorkExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :work_experiences, id: :uuid do |t|
      t.string     :company_name
      t.string     :job_title
      t.datetime   :start_date
      t.datetime   :end_date

      t.timestamps
    end
  end
end
