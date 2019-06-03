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
		@question = Qa.find(params[:id])
		@question.destroy
		redirect_to '/'
	end

	def edit
	end

	def show
		@question = Qa.find(params[:id])
	end

	def quis
		@question = Qa.find(Qa.pluck(:id).sample)
	end

	private
		def qa_params
			params.require(:qa).permit(:eng, :japa, :senten)
		end

end
