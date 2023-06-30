# frozen_string_literal: true

class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.references :user

      t.timestamps
    end
  end
end
