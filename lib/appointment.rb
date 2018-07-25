require_relative "patient.rb"
require_relative "doctor.rb"

class Appointment

  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end
