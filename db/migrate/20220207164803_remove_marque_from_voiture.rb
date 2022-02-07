class RemoveMarqueFromVoiture < ActiveRecord::Migration[6.1]
  def change
    remove_column :voitures, :marque, :string
  end
end
