class CreateKomekomes < ActiveRecord::Migration[5.1]
  def change
    create_table :komekomes do |t|
      t.string :text
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
