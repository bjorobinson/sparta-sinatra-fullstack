class Users
  attr_accessor :id, :first_name, :last_name, :email

  def self.open_connection
    conn = PG.connect(dbname: "mockaroo_car_and_user")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,first_name,last_name,email FROM user ORDER BY id"
    results = conn.exec(sql)
    users = results.map do |tuple|
      self.hydrate tuple
    end
    return users
  end

  def self.hydrate user_data
    user = Users.new
    user.id = user_data['id']
    user.first_name = user_data['first_name']
    user.last_name = user_data['last_name']
    user.email = user_data['email']
    return user
  end
end
