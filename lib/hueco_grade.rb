class HuecoGrade
  @@hueco = ["VB", "V0", "V1", "V2", "V3", "V4", 
    "V5", "V6", "V7", "V8", "V9", "V10", "V11", 
    "V12", "V13", "V14", "V15", "V16", "Project"];

    def self.getArray
      return @@hueco;
    end

    def self.getRand
      return @@hueco[rand(18)];
    end
    
end