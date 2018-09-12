class CreateCategories < ActiveRecord::Migration[5.2]
  def self.up
    create_table :categories, comment: 'カテゴリ' do |t|
      t.string :name, null: false, comment: 'カテゴリ名称'
      t.integer :parent_id, null: true, index: true, comment: '親ID'
      t.integer :lft, null: false, index: true, comment: '左カラム'
      t.integer :rgt, null: false, index: true, comment: '右カラム'

      # optional fields
      t.integer :depth, null: false, default: 0, commment: '深さ'
      t.integer :children_count, null: false, default: 0, comment: '子の数'
    end
  end

  def self.down
    drop_table :categories
  end
end
