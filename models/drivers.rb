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

  def self.hydrate driver_data
    driver = Drivers.new
    driver.id = driver_data['id']
    driver.first_name = driver_data['first_name']
    driver.last_name = driver_data['last_name']
    driver.email = driver_data['email']
    return driver
  end
end
