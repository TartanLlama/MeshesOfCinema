class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries, id: false do |t|
      t.string :country_id
    end
  end
end
