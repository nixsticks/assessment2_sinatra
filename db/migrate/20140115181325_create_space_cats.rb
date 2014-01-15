class CreateSpaceCats < ActiveRecord::Migration
  def up
    create_table :space_cats do |t|
      t.string :name
      t.string :home_planet
      t.string :tagline
      t.string :superpower

      t.timestamps
    end
  end

  def down
    drop_table :space_cats
  end
end