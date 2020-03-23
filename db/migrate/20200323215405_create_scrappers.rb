class CreateScrappers < ActiveRecord::Migration[5.2]
  def change
    create_table :scrappers do |t|

      t.timestamps
    end
  end
end
