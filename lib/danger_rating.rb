class DangerRating
  @@danger = ["none", "PG", "PG-13", "R", "X"];
  
  def self.getArray
    return @@danger;
  end

  def self.getRand
    return @@danger[rand(5)];
  end
end