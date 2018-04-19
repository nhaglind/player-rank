class AddRColumnsToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :r1, :integer
    add_column :teams, :r2, :integer
    add_column :teams, :r3, :integer
    add_column :teams, :r4, :integer
    add_column :teams, :r5, :integer
    add_column :teams, :r6, :integer
    add_column :teams, :r7, :integer
    add_column :teams, :r8, :integer
    add_column :teams, :r9, :integer
    add_column :teams, :r10, :integer
  end
end
