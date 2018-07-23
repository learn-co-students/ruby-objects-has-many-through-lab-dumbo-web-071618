class Doctor
 attr_accessor :name,:patients
    @@all = []
 
    def  initialize(name)
    @name = name 
    @@all << self
    @appointments = []
    @patients = patients 

    end 

 def self.all
    @@all

end

 def new
    doc = self.new(name)
    return doc
 end 

 def new_appointment(patient,date)
    new_appoint = Appointment.new(patient,self,date)
    @appointments << new_appoint 
    new_appoint
    


 end 

def appointments
 Appointment.all.select do |ele|
  ele.doctor == self
 end 
end 


def patients 
   self.appointments.collect do |ele|
   ele.patient
   end 


end 


end 