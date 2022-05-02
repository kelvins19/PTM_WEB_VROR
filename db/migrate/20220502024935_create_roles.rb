class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :roles_name, null: false, default: ""
      t.timestamps
    end
  end
end
