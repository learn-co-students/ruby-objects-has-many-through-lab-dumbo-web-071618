require 'pry'
require_relative 'appointment.rb'

class Doctor

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
    new_appointment
  end

  def appointments
    Appointment.all.select do |doctors|
      doctors.doctor == self
    end
  end

  def patients
    appointments.collect do |corresponding|
      corresponding.patient
    end
  end

end
