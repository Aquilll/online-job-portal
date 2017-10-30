class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title, null: false
      t.belongs_to :company, foreign_key: true, null: false, index: true
      t.string :url
      t.string :location, null: false
      t.string :job_type

      t.timestamps
    end
  end
end
