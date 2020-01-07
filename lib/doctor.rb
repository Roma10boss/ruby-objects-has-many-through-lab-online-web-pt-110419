class Doctor 
  attr_reader :name, :appointement, :patient
  @@all_doc =[]
  
  def initialize(name)
    @name = name 
    @@all_doc << self 
  end 
  
  def self.all 
    @@all_doc
  end 
  def appointements
    Appointement.all.select do |appointement|
      appointement.doctor == self 
    end 
  end 
  def patients
    appointements.map do |appointement|
      appointement.patients
    end 
  end 
end 