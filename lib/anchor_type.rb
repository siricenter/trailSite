class AnchorType
  @@anchor = ["none", "Shuts", "Rings", "Chains", "Bolts"];
  
  def self.getArray
    return @@anchor;
  end
  
  def self.getRand
    @@anchor[rand(5)];
  end

end