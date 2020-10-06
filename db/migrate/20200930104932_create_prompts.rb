class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.string :content
      t.integer :project_id
      t.integer :text_id

      t.timestamps
    end
  end
end
