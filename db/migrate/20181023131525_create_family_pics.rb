class CreateFamilyPics < ActiveRecord::Migration[5.2]
  def change
    create_table :family_pics do |t|
      t.string :uplaod_image

      t.timestamps
    end
  end
end
