DB = Sequel.connect(adapter: :postgres,
  database: ENV['DB_NAME'],
  host: ENV['DB_HOST'],
  user: ENV['DB_USER'],
  password: ENV['DB_PASS'])
Sequel::Model.db = DB
