class AddUrlsToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :definition_url, :string
    rename_column :sites, :url, :word_url
    rename_column :sites, :css, :word_css
  end
end
