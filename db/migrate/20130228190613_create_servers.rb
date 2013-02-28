class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :hostname
      t.string :ip
      t.string :ssh_user
      t.string :web_server
      t.string :sites_path
      t.boolean :use_sudo
      t.text :description

      t.timestamps
    end
  end
end
