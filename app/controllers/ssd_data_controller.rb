class SsdDataController < ApplicationController
  def index
    matching_ssd_data = SsdDatum.all

    @list_of_ssd_data = matching_ssd_data.order({ :created_at => :desc })

    render({ :template => "ssd_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_ssd_data = SsdDatum.where({ :id => the_id })

    @the_ssd_datum = matching_ssd_data.at(0)

    render({ :template => "ssd_data/show.html.erb" })
  end

  def create
    the_ssd_datum = SsdDatum.new
    the_ssd_datum.storage_id = params.fetch("query_storage_id")
    the_ssd_datum.part_type = params.fetch("query_part_type")
    the_ssd_datum.brand = params.fetch("query_brand")
    the_ssd_datum.name = params.fetch("query_name")
    the_ssd_datum.item_number = params.fetch("query_item_number")
    the_ssd_datum.price = params.fetch("query_price")
    the_ssd_datum.storage_size = params.fetch("query_storage_size")
    the_ssd_datum.read_speed = params.fetch("query_read_speed")
    the_ssd_datum.write_speed = params.fetch("query_write_speed")
    the_ssd_datum.link = params.fetch("query_link")
    the_ssd_datum.image = params.fetch("query_image")

    if the_ssd_datum.valid?
      the_ssd_datum.save
      redirect_to("/ssd_data", { :notice => "Ssd datum created successfully." })
    else
      redirect_to("/ssd_data", { :notice => "Ssd datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_ssd_datum = SsdDatum.where({ :id => the_id }).at(0)

    the_ssd_datum.storage_id = params.fetch("query_storage_id")
    the_ssd_datum.part_type = params.fetch("query_part_type")
    the_ssd_datum.brand = params.fetch("query_brand")
    the_ssd_datum.name = params.fetch("query_name")
    the_ssd_datum.item_number = params.fetch("query_item_number")
    the_ssd_datum.price = params.fetch("query_price")
    the_ssd_datum.storage_size = params.fetch("query_storage_size")
    the_ssd_datum.read_speed = params.fetch("query_read_speed")
    the_ssd_datum.write_speed = params.fetch("query_write_speed")
    the_ssd_datum.link = params.fetch("query_link")
    the_ssd_datum.image = params.fetch("query_image")

    if the_ssd_datum.valid?
      the_ssd_datum.save
      redirect_to("/ssd_data/#{the_ssd_datum.id}", { :notice => "Ssd datum updated successfully."} )
    else
      redirect_to("/ssd_data/#{the_ssd_datum.id}", { :alert => "Ssd datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_ssd_datum = SsdDatum.where({ :id => the_id }).at(0)

    the_ssd_datum.destroy

    redirect_to("/ssd_data", { :notice => "Ssd datum deleted successfully."} )
  end
end
