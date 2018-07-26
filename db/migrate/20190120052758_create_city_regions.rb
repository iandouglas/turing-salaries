class CreateCityRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :city_regions do |t|
      t.references :city, foreign_key: true
      t.references :region, foreign_key: true
    end
  end
end
