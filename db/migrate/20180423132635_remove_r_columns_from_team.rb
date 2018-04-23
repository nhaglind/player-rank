class RemoveRColumnsFromTeam < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :r1
    remove_column :teams, :r2
    remove_column :teams, :r3
    remove_column :teams, :r4
    remove_column :teams, :r5
    remove_column :teams, :r6
    remove_column :teams, :r7
    remove_column :teams, :r8
    remove_column :teams, :r9
    remove_column :teams, :r10
  end
end
