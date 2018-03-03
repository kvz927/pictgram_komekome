class AddTopicRefToKomekomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :komekomes, :topic, foreign_key: true
  end
end
