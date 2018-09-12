class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :addres
      t.string :tel
      t.string :fax
      t.string :url
      t.text :map
      t.text :access
      t.references :category, foreign_key: true
      t.integer :min_age
      t.integer :max_age
      t.boolean :opened_sun
      t.boolean :opened_mon
      t.boolean :opened_tue
      t.boolean　opened_thu :opened_wd
      t.boolean :opened_fri
      t.boolean :opened_sat
      t.text :opened_day
      t.text :opened_time
      t.integer :min_price
      t.integer :max_price
      t.text :description

      t.timestamps
    end
  end
end
