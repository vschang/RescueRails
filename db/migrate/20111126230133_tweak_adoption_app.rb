class TweakAdoptionApp < ActiveRecord::Migration
  def change
    remove_column :adoption_apps, :have_pets
    remove_column :adoption_apps, :had_pets
    add_column :adoption_apps, :pets_branch, :string
  end
end
