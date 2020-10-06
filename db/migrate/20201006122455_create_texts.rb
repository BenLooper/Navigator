class CreateTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :texts do |t|
      t.text :content
      t.integer :project_id
      t.integer :choice_id

      t.timestamps
    end
  end
end
