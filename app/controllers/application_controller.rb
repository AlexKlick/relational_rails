class ApplicationController < ActionController::Base
  def getdata
    # this contains what has been selected in the first select box
    @data_from_select1 = params[:first_select]

    # we get the data for selectbox 2
    @data_for_select2 = MyModel.where(:some_id => @data_from_select1).all

    # render an array in JSON containing arrays like:
    # [[:id1, :name1], [:id2, :name2]]
    render :json => @data_for_select2.map{|c| [c.id, c.name]}
  end
end
