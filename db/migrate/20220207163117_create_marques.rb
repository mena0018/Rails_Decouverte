class CreateMarques < ActiveRecord::Migration[6.1]
  def change
    create_table :marques do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
