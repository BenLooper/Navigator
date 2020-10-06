class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.text :content
      t.integer :project_id
      t.integer :prompt_id

      t.timestamps
    end
  end
end
