
class FieldsController < ApplicationController

  def show

    @fields = Field.find(params[:id]).children

    respond_to do |format|
      format.html{}
      format.json{
        render json: @fields
      }
    end

  end

end
