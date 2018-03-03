class AddUserRefToKomekomes < ActiveRecord::Migration[5.1]
  def change
    add_reference :komekomes, :user, foreign_key: true
  end
end
