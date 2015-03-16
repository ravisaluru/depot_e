#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
module ApplicationHelper
  def date_time_custom
    Time.now
  end

  def user_info_custom
    user = current_user
    time = Time.parse(user.last_sign_in_at.to_s)
    Rails.logger.info("time value ="+ time.to_s)
    days = (Time.now.to_date - time.to_date).to_i
    Rails.logger.info("days value = "+days.to_s)
    if days < 120
      result = true
    else
      result = false
    end
    result
  end

end
