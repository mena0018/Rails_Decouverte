class AddMarqueIdFromVoiture < ActiveRecord::Migration[6.1]
  def change
    add_column :voitures, :marque_id, :integer
  end
end
