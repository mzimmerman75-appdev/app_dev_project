class PsuDataController < ApplicationController
  def index
    matching_psu_data = PsuDatum.all

    @list_of_psu_data = matching_psu_data.order({ :created_at => :desc })

    render({ :template => "psu_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_psu_data = PsuDatum.where({ :id => the_id })

    @the_psu_datum = matching_psu_data.at(0)

    render({ :template => "psu_data/show.html.erb" })
  end

  def create
    the_psu_datum = PsuDatum.new
    the_psu_datum.psu_id = params.fetch("query_psu_id")
    the_psu_datum.part_type = params.fetch("query_part_type")
    the_psu_datum.brand = params.fetch("query_brand")
    the_psu_datum.name = params.fetch("query_name")
    the_psu_datum.item_number = params.fetch("query_item_number")
    the_psu_datum.price = params.fetch("query_price")
    the_psu_datum.wattage = params.fetch("query_wattage")
    the_psu_datum.certification = params.fetch("query_certification")
    the_psu_datum.link = params.fetch("query_link")
    the_psu_datum.image = params.fetch("query_image")

    if the_psu_datum.valid?
      the_psu_datum.save
      redirect_to("/psu_data", { :notice => "Psu datum created successfully." })
    else
      redirect_to("/psu_data", { :notice => "Psu datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_psu_datum = PsuDatum.where({ :id => the_id }).at(0)

    the_psu_datum.psu_id = params.fetch("query_psu_id")
    the_psu_datum.part_type = params.fetch("query_part_type")
    the_psu_datum.brand = params.fetch("query_brand")
    the_psu_datum.name = params.fetch("query_name")
    the_psu_datum.item_number = params.fetch("query_item_number")
    the_psu_datum.price = params.fetch("query_price")
    the_psu_datum.wattage = params.fetch("query_wattage")
    the_psu_datum.certification = params.fetch("query_certification")
    the_psu_datum.link = params.fetch("query_link")
    the_psu_datum.image = params.fetch("query_image")

    if the_psu_datum.valid?
      the_psu_datum.save
      redirect_to("/psu_data/#{the_psu_datum.id}", { :notice => "Psu datum updated successfully."} )
    else
      redirect_to("/psu_data/#{the_psu_datum.id}", { :alert => "Psu datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_psu_datum = PsuDatum.where({ :id => the_id }).at(0)

    the_psu_datum.destroy

    redirect_to("/psu_data", { :notice => "Psu datum deleted successfully."} )
  end
end
