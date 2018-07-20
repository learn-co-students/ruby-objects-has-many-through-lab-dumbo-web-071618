class Appointment
	attr_reader :doctor,:date
	attr_accessor :patient
	@@all = []
	def initialize patient,doctor,date
		@patient = patient
		@doctor = doctor
		@date = date 

		@@all << self
	end

	def self.all 
		@@all
	end

end