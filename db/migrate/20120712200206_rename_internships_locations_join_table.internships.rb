# This migration comes from internships (originally 20110512192615)
class RenameInternshipsLocationsJoinTable < ActiveRecord::Migration
  def change
    rename_table :internships_locations, :internships_internships_locations
  end
end
