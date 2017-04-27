Sequel.migration do
  change do
    create_table(:delayed_jobs) do
      primary_key :id
      column :priority, "integer", :default=>0
      column :attempts, "integer", :default=>0
      column :handler, "text"
      column :last_error, "text"
      column :run_at, "timestamp"
      column :locked_at, "timestamp"
      column :failed_at, "timestamp"
      column :locked_by, "varchar(255)"
      column :queue, "varchar(255)"
      column :created_at, "timestamp"
      column :updated_at, "timestamp"
      
      index [:priority, :run_at]
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20170424073213_test.rb')"
  end
end
