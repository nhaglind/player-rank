class AddFullNameToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :full_name, :string
    remove_column :players, :first_name
    remove_column :players, :last_name
  end
end
