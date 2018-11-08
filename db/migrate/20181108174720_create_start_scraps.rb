class CreateStartScraps < ActiveRecord::Migration[5.2]
  def change
    create_table :start_scraps do |t|
      t.hash :value, :additional_info, :money
      t.timestamps
    end
  end
end
