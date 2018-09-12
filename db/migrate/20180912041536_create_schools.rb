class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools, comment: 'スクール' do |t|
      t.string :name, null: false, comment: '名称'
      t.text :address, null: true, comment: '住所'
      t.string :tel, null: false, comment: '電話番号'
      t.string :fax, null: true, comment: 'FAX'
      t.string :url, null: true, comment: 'ホームページURL'
      t.text :map, null: true, comment: '地図'
      t.text :access, null: true, comment: 'アクセス'
      t.references :category, foreign_key: true, null: false, comment: 'カテゴリ'
      t.integer :min_age, null: true, comment: '対象年齢（最小）'
      t.integer :max_age, null: true, comment: '対象年齢（最大）'
      t.boolean :opened_sun, null: true, comment: '営業日（日）'
      t.boolean :opened_mon, null: true, comment: '営業日（月）'
      t.boolean :opened_tue, null: true, comment: '営業日（火）'
      t.boolean :opened_wed, null: true, comment: '営業日（水）'
      t.boolean :opened_thu, null: true, comment: '営業日（木）'
      t.boolean :opened_fri, null: true, comment: '営業日（金）'
      t.boolean :opened_sat, null: true, comment: '営業日（土）'
      t.text :opened_day, null: true, comment: '営業日'
      t.text :opened_time, null: true, comment: '営業時間'
      t.integer :min_price, null: true, comment: '料金の目安（最小）'
      t.integer :max_price, null: true, comment: '料金の目安（最大）'
      t.text :description, null: true, comment: '紹介文'

      t.timestamps
    end
  end
end
