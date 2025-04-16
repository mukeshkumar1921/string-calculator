class StringCalculatorsController < ApplicationController
  def new
    @result = nil
    @error = nil
  end

  def create
    input = params[:input]
    begin
      @result = StringCalculator.add(input)
      @error = nil
    rescue => e
      @result = nil
      @error = e.message
    end
    render :new
  end
end
