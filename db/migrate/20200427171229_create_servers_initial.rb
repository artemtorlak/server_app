class CreateServersInitial < ActiveRecord::Migration[6.0]
  def change

    #Таблица сервер
    create_table :servers do |t|
      t.string :name
    end

    create_table :bandwidths, id: false do |t|
      t.integer :server_id
      t.float :value
      t.text :interface_name
    end
    
    #Сырой запрос на добавлене столбца
    execute "ALTER TABLE bandwidths ADD COLUMN value_id SERIAL PRIMARY KEY;"
  end
end
