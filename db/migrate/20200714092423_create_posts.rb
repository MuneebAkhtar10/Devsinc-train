class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :commenter
      t.text :body
      t.text :phone
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
