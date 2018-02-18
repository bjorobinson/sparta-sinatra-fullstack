class Cars
  attr_accessor :id, :car_make, :car_model, :production_year

  def self.open_connection
    conn = PG.connect(dbname: "mockaroo_car_and_driver")
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT id,car_make,car_model,production_year FROM car ORDER BY id"
    results = conn.exec(sql)
    cars = results.map do |tuple|
      self.hydrate tuple
    end
    return cars
  end

  def self.find arg_id
    conn = self.open_connection
    sql = "SELECT id,car_make,car_model,production_year FROM car WHERE id = #{arg_id} LIMIT 1"
    results = conn.exec(sql)
    car = self.hydrate results.first
    return car
  end

  def save
    conn = Cars.open_connection
    if (!self.id)
      sql = "INSERT INTO car (car_make,car_model,production_year) VALUES ('#{self.car_make}','#{self.car_model}','#{self.production_year}')"
    else
      sql = "UPDATE car SET car_make='#{self.car_make}', car_model='#{self.car_model}', production_year='#{self.production_year}' WHERE id=#{self.id}"
    end
    conn.exec(sql)
  end

  def self.destroy id
      conn = self.open_connection
      sql = "DELETE FROM car where id = #{id}"
      conn.exec(sql)
  end

  def self.hydrate car_data
    car = Cars.new
    car.id = car_data['id']
    car.car_make = car_data['car_make']
    car.car_model = car_data['car_model']
    car.production_year = car_data['production_year']
    return car
  end
end
