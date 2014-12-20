class AnchorType
  @@anchor = ["none", "Shuts", "Rings", "Chains", "Bolts", "Top Rope"];
  
  def self.getArray
    return @@anchor;
  end
  
  def self.getRand
    return @@anchor[rand(5)];
  end

end