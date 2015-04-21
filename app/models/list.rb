class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy 
  
  validates :permissions, :inclusion => { :in => %w(private viewable open), :message => "%{value} is not a valid option"}
end
