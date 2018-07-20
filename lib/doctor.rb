class Doctor
    attr_reader :name
    attr_accessor :appointments

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        Appointment.all.map do |appointment|
            appointment.patient
        end
    end
end