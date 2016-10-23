class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
    	t.string :category
    	t.string :title
    	t.text :address
    	t.float :latitude
    	t.float :longitude
      t.timestamps null: false
    end
  end
end
