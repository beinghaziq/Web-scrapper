class CreateScrappedData < ActiveRecord::Migration[5.2]
  def change
    create_table :scrapped_data do |t|
      t.string :title
      t.string :category
      t.datetime :date

      t.timestamps
    end
  end
end
