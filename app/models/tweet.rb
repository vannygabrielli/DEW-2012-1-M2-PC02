class Tweet < ActiveRecord::Base

Twitter.configure do |config|
     config.consumer_key = 'MjP940eBuhOvyeBklN23w'
      config.consumer_secret = '5ZEWxWQ3gik1rFO1uLUzF7MaCiloOHII2XGaFRByRg'
      config.oauth_token = '93225847-BZfsxCMFmkgHHuTKKTBifOnCQbMnM5lo7SXXY8PtA'
      config.oauth_token_secret = 'F0sD0U6ZhOZ0sFWI5euZV0YstatfycgonCk1sEIe48'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end
