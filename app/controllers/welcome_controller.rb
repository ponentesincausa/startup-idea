class WelcomeController < ApplicationController
	def index
		@titles = Title.order("RANDOM()").limit(1)
		@trends = Trend.order("RANDOM()").limit(1)
		@problems = Problem.order("RANDOM()").limit(1)
		response = { :titles => @titles, :trends => @trends, :problems => @problems }
   		respond_to do |format|
		    format.html
				puts "aquí debería de ir algo: #{@trends}"
				format.json { render :json => response }
				# format.json { render :json => @trends }
				# format.json { render :json => @problems }
   		end


			#
			# 	respond_to do |format|
			# 		format.html
			# 		format.json {
			# 			format.json  { render :json => @trends }
			# 		}
			# end
			#
			#
			# 	respond_to do |format|
			# 		format.html
			# 		format.json {
			# 			format.json  { render :json => @problems }
			# 		}
			# end
	end
end
