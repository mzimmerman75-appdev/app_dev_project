class CaseDataController < ApplicationController
  def index
    matching_case_data = CaseDatum.all

    @list_of_case_data = matching_case_data.order({ :created_at => :desc })

    render({ :template => "case_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_case_data = CaseDatum.where({ :id => the_id })

    @the_case_datum = matching_case_data.at(0)

    render({ :template => "case_data/show.html.erb" })
  end

  def create
    the_case_datum = CaseDatum.new
    the_case_datum.case_id = params.fetch("query_case_id")
    the_case_datum.part_type = params.fetch("query_part_type")
    the_case_datum.brand = params.fetch("query_brand")
    the_case_datum.name = params.fetch("query_name")
    the_case_datum.item_number = params.fetch("query_item_number")
    the_case_datum.price = params.fetch("query_price")
    the_case_datum.size = params.fetch("query_size")
    the_case_datum.color = params.fetch("query_color")
    the_case_datum.link = params.fetch("query_link")
    the_case_datum.image = params.fetch("query_image")

    if the_case_datum.valid?
      the_case_datum.save
      redirect_to("/case_data", { :notice => "Case datum created successfully." })
    else
      redirect_to("/case_data", { :notice => "Case datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_case_datum = CaseDatum.where({ :id => the_id }).at(0)

    the_case_datum.case_id = params.fetch("query_case_id")
    the_case_datum.part_type = params.fetch("query_part_type")
    the_case_datum.brand = params.fetch("query_brand")
    the_case_datum.name = params.fetch("query_name")
    the_case_datum.item_number = params.fetch("query_item_number")
    the_case_datum.price = params.fetch("query_price")
    the_case_datum.size = params.fetch("query_size")
    the_case_datum.color = params.fetch("query_color")
    the_case_datum.link = params.fetch("query_link")
    the_case_datum.image = params.fetch("query_image")

    if the_case_datum.valid?
      the_case_datum.save
      redirect_to("/case_data/#{the_case_datum.id}", { :notice => "Case datum updated successfully."} )
    else
      redirect_to("/case_data/#{the_case_datum.id}", { :alert => "Case datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_case_datum = CaseDatum.where({ :id => the_id }).at(0)

    the_case_datum.destroy

    redirect_to("/case_data", { :notice => "Case datum deleted successfully."} )
  end
end
