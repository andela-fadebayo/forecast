class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.references :guest, index: true, foreign_key: true
      t.string :provider
      t.string :uid
      t.string :token
      t.string :refresh_token

      t.timestamps null: false
    end
  end
end
