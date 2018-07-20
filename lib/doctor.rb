require "pry"
class Doctor

  attr_accessor :new_appointment, :patients
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
    # binding.pry
  end

  def appointments
    Appointment.all.select { |appointment|
    appointment.doctor == self  }
  end

  def patients
    appointments.map { |pointment| pointment.patient  }
  end

  def self.all
    @@all
  end
end
