class CreateUserTemps < ActiveRecord::Migration[6.0]
  def change
    create_table :user_temps do |t|

      t.timestamps
    end
  end
end
