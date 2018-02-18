class Drivers
  attr_accessor :id, :first_name, :last_name, :email

  def self.open_connection
    conn = PG.connect(dbname: "mockaroo_car_and_driver")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,first_name,last_name,email FROM driver ORDER BY id"
    results = conn.exec(sql)
    drivers = results.map do |tuple|
      self.hydrate tuple
    end
    return drivers
  end

  def self.find arg_id
    conn = self.open_connection
    sql = "SELECT id,first_name,last_name,email FROM driver WHERE id = #{arg_id} LIMIT 1"
    results = conn.exec(sql)
    driver = self.hydrate results.first
    return driver
  end

  def save
    conn = Drivers.open_connection
    if (!self.id)
      sql = "INSERT INTO driver (first_name,last_name,email) VALUES ('#{self.first_name}','#{self.last_name}','#{self.email}')"
    else
      sql = "UPDATE driver SET first_name='#{self.first_name}', last_name='#{self.last_name}', email='#{self.email}' WHERE id=#{self.id}"
    end
    conn.exec(sql)
  end

  def self.destroy id
      conn = self.open_connection
      sql = "DELETE FROM driver where id = #{id}"
      conn.exec(sql)
  end

  def self.hydrate driver_data
    driver = Drivers.new
    driver.id = driver_data['id']
    driver.first_name = driver_data['first_name']
    driver.last_name = driver_data['last_name']
    driver.email = driver_data['email']
    return driver
  end
end
