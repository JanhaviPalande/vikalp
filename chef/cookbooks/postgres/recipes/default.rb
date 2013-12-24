package "postgresql-server"
package "postgresql"

execute "initdb -D /var/lib/pgsql/data -E UTF8" do
	user "postgres"
  creates "/var/lib/pgsql/data/PG_VERSION"
end

service "postgresql" do
  action [:enable, :start]
end

execute "createdb #{node.postgresql.db_name} -T template0 -E UTF8" do
  user "postgres"
  not_if(%Q%psql -l | grep "#{node.postgresql.db_name}"%, :user => 'postgres')
end