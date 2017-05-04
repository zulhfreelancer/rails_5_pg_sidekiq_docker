class HardWorker
  
  include Sidekiq::Worker
  
  def perform
    puts "Sending email..."
    UserMailer.hello.deliver_now
    puts "Email sent!"
  end

end
