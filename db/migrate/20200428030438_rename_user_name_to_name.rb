class RenameUserNameToName < ActiveRecord::Migration[6.0]
  def change
    
      rename_column :users, :Name, :name
    
  end
end
