class CreateFamilyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :family_images do |t|
      t.string :upload_pic

      t.timestamps
    end
  end
end
