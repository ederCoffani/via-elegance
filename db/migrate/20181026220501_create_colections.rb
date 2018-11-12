class CreateColections < ActiveRecord::Migration[5.2]
  def change
    create_table :colections do |t|
      t.string :name
      t.string :descriptions
      t.string :url_image
      t.string :type

      t.timestamps
    end
  end
end
