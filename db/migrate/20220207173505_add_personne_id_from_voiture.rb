class AddPersonneIdFromVoiture < ActiveRecord::Migration[6.1]
  def change
    add_column :voitures, :personne_id, :integer
  end
end
