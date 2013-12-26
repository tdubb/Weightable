class Weight < ActiveRecord::Base
  mount_uploader :pic, ImageUploader
  before_create :record_date 
  protected 
  def record_date 
      self.date = read_attribute(:date) || Date.today 
  end 
end
