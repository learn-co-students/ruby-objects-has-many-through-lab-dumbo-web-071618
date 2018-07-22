class Doctor
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    appointments.map do |appt|
      appt.patient
    end
  end
end
