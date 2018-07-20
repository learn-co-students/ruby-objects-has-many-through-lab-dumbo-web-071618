class Doctor 
	attr_reader :name,:appointments
	attr_accessor :patients
	@@all = []
	def initialize name
		@name = name
		@@all << self
	end

	def self.all 
		@@all
	end

	def new_appointment date,patient 
		appt = Appointment.new(date,self,patient)
	end

	def appointments
		Appointment.all.select do |appt|
			appt.doctor == self
		end
	end

	def patients
		appointments.map do |appt|
			appt.patient 
		end

	end

end