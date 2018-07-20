class Patient
	attr_reader :name 
	attr_accessor :doctors,:appointments
	@@all = []
	def initialize name
		@name=name
		@@all << self
	end

	def self.all 
		@all 
	end

	def new_appointment doctor,date
		appt = Appointment.new(self,doctor,date)
	end

	def appointments
		Appointment.all do |appt|
			appt.patient == self
		end
	end

	def doctors
		appointments.map do |appt|
			appt.doctor
		end
	end
end