class ChangePetHeigthToFloat < ActiveRecord::Migration[5.2]
  def change
    change_table :pet_histories do |t|
      t.change :heigth, :float
    end
  end
end
