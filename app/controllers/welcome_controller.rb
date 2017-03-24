class WelcomeController < ApplicationController
	def index
		@titles = Title.order("RANDOM()").limit(1)

   		respond_to do |format|
		    format.html
		    format.json {
		    	format.json  { render :json => @titles }
	     	}
   		end

		@trends = Trend.order("RANDOM()").limit(1)

				respond_to do |format|
					format.html
					format.json {
						format.json  { render :json => @trends }
					}
			end
		@problems = Problem.order("RANDOM()").limit(1)

				respond_to do |format|
					format.html
					format.json {
						format.json  { render :json => @problems }
					}
			end
	end
end
