class CreateGoToLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :go_to_links do |t|
      t.string :url, null: false
      t.string :title, null: false
      t.string :slug, null: false

      t.timestamps

      # 1. faster lookup
      # 2. uniqueness
      t.index :slug, unique: true
    end
  end
end
