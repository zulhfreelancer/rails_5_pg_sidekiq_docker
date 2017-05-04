class PagesController < ApplicationController

    # user Sidekiq Worker
    # HardWorker.perform_async

    # user ActiveJob with Sidekiq adapter
    # UserMailer.hello.deliver_later

    def index
    end

    def new
        @feedback = Feedback.new
    end

    def create
        @feedback = Feedback.new(feedback_params)
        if @feedback.save
            email = params['feedback']['from']
            UserMailer.hello(email).deliver_later
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def feedback_params
        params.require(:feedback).permit(:from, :message)
    end

end
