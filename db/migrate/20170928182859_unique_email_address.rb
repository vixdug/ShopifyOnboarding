class UniqueEmailAddress < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.index  :last_name
    end 
  end
end
