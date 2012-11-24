class Notepad < ActiveRecord::Base
  belongs_to :user

  attr_accessible :content, :title

  validates :title, :presence => true, :length => { :maximum => 100 }
  validates :content, :presence => true

  default_scope order("id DESC")
end
