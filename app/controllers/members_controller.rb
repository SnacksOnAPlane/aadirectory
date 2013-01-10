class MembersController < ApplicationController
  def list
  end

  def index
  	letter = 
  		if params.has_key?(:letter)
  			params[:letter]
  		else 
  			"b"
  		end
  	@members = Member.where("last_name LIKE :prefix", prefix:"#{letter}%").order(:last_name, :first_name)
  end

  def new
  	@member = Member.new
  end

  def create
  	@member = Member.new(params[:member])
  	if @member.save
  		redirect_to @member
  	else
  		render 'new'
  	end
  end
end
