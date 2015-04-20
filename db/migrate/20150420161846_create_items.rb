class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.references :list, index: true

      t.timestamps
    end
  end
end
