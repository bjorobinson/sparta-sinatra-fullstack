class Users

  def self.open_connection
    conn = PG.connect(dbname: "mockaroo_car_and_user")
  end

end
