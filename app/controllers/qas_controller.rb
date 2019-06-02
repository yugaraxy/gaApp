class QasController < ApplicationController

	def create
		@new_question = Qa.new(qa_params)
		if @new_question.save
			flash[:success] = "QAを生成しました"
			redirect_to '/'
		else
			render '/'
		end
	end

	def destroy
	end

	def edit
	end

	def show
	end

	private
		def qa_params
			params.require(:qa).permit(:eng, :japa, :senten)
		end

end
