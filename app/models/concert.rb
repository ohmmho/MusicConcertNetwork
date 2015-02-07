class Concert < ActiveRecord::Base
  has_many :comments
  validates_presence_of :band, :venue, :city, :date, :description


  def self.get_concerts_day
    Concert.where("date = ?", Time.zone.now.beginning_of_day)
  end

  def self.get_concerts_month
    from = Time.now.in_time_zone.beginning_of_month
    to = Time.now.in_time_zone.end_of_month
    Concert.where(date: from..to)
  end

 

end