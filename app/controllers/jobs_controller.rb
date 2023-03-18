class JobsController < ApplicationController

    def index
        @jobs = Job.all
        render 'jobs/index' # can be omitted
      end


      def create
        @job = Job.new(job_params)
        if @job.save
          render 'jobs/create' # can be omitted
        end
    end


        def show
            @job = Job.find_by(id: params[:id])
            if @job and @job.show
              render json: { success: true }
            else
              render json: { success: false }
            end
          end
        
end
