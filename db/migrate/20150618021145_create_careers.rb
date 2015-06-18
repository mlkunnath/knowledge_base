class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :name, limit: 200

      t.timestamps
    end
  end
end
