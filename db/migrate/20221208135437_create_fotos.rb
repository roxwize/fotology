class CreateFotos < ActiveRecord::Migration[7.0]
  def change
    create_table :fotos do |t|
      t.string :url, null: false
      t.string :desc

      t.timestamps
    end
  end
end
