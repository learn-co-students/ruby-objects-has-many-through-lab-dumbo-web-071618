class Patient
  attr_accessor :name, :doctor, :patients
  @@all = []

  def initialize(name)
    @name = name
    @patients = []
    @doctor = doctor
    
    @@all << self 

  end 

  def self.all
   @@all 

  end 

  def new(name)
   self.new(name)

  end 

  def doctors 
    self.appointments.collect do |ele|
        ele.doctor
        end 

  end 


  def new_appointment(doctor,date)
    new_appt = Appointment.new(self,doctor,date)
    #new_appt.patient = self
    @patients << new_appt 
    new_appt


  end 

def appointments
    Appointment.all.select do |ele|
        #puts "this is the ele: #{ele}" 
       ele.patient == self
     end 
end 


end 