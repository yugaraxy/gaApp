class StaticController < ApplicationController
	def home
		@qa = Qa.new
		@questions = Qa.all
	end
end
