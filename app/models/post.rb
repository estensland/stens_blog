class Post < ActiveRecord::Base

  def created_to_s # LOCAL TIME I HEARD COULD GET WONKY ON THE INTERWEB
    minutes = self.created_at.localtime.min.to_s
    minutes = "0#{minutes}" if minutes.length == 1
    "#{self.created_at.localtime.month}/#{self.created_at.localtime.day}/#{self.created_at.localtime.year} at: #{self.created_at.localtime.hour}: #{minutes}"
  end

end
