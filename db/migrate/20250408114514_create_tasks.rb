class CreateTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status, default: 'not_started', null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
