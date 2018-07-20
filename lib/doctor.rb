class Doctor
  attr_reader :name
  # The Doctor class needs a class variable @@all that begins as an empty array.
  @@all = []
  # A doctor should be initialized with a name and be saved in the @@all array.
  def initialize name
    @name = name
    @@all << self
  end
  # The Doctor class needs a class method .all that lists each doctor in the
  # class variable.
  def self.all
    @@all
  end
  # The Doctor class needs an instance method, #new_appointment, that takes in a
  # date and an instance of the Patient class and creates a new appointment.
  # That appointment should know that it belongs to the doctor
  def new_appointment patient, date
    Appointment.new patient, self, date
  end
  # The Doctor class needs an instance method, #appointments, that iterates
  # through all appointments and finds those belonging to this doctor.
  def appointments
    Appointment.all.select do |appointment| appointment.doctor == self end
  end
  # The Doctor class needs an instance method, #patients, that iterates over
  # that doctor's appointments and collects the patient that belongs to each
  # appointment.
  def patients
    appointments.map do |appointment| appointment.patient end
  end
end
