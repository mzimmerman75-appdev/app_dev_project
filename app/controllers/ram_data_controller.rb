class RamDataController < ApplicationController
  def index
    matching_ram_data = RamDatum.all

    @list_of_ram_data = matching_ram_data.order({ :created_at => :desc })

    render({ :template => "ram_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_ram_data = RamDatum.where({ :id => the_id })

    @the_ram_datum = matching_ram_data.at(0)

    render({ :template => "ram_data/show.html.erb" })
  end

  def create
    the_ram_datum = RamDatum.new
    the_ram_datum.ram_id = params.fetch("query_ram_id")
    the_ram_datum.part_type = params.fetch("query_part_type")
    the_ram_datum.series = params.fetch("query_series")
    the_ram_datum.brand = params.fetch("query_brand")
    the_ram_datum.name = params.fetch("query_name")
    the_ram_datum.item_number = params.fetch("query_item_number")
    the_ram_datum.price = params.fetch("query_price")
    the_ram_datum.mem_speed = params.fetch("query_mem_speed")
    the_ram_datum.capacity = params.fetch("query_capacity")
    the_ram_datum.link = params.fetch("query_link")
    the_ram_datum.image = params.fetch("query_image")

    if the_ram_datum.valid?
      the_ram_datum.save
      redirect_to("/ram_data", { :notice => "Ram datum created successfully." })
    else
      redirect_to("/ram_data", { :notice => "Ram datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_ram_datum = RamDatum.where({ :id => the_id }).at(0)

    the_ram_datum.ram_id = params.fetch("query_ram_id")
    the_ram_datum.part_type = params.fetch("query_part_type")
    the_ram_datum.series = params.fetch("query_series")
    the_ram_datum.brand = params.fetch("query_brand")
    the_ram_datum.name = params.fetch("query_name")
    the_ram_datum.item_number = params.fetch("query_item_number")
    the_ram_datum.price = params.fetch("query_price")
    the_ram_datum.mem_speed = params.fetch("query_mem_speed")
    the_ram_datum.capacity = params.fetch("query_capacity")
    the_ram_datum.link = params.fetch("query_link")
    the_ram_datum.image = params.fetch("query_image")

    if the_ram_datum.valid?
      the_ram_datum.save
      redirect_to("/ram_data/#{the_ram_datum.id}", { :notice => "Ram datum updated successfully."} )
    else
      redirect_to("/ram_data/#{the_ram_datum.id}", { :alert => "Ram datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_ram_datum = RamDatum.where({ :id => the_id }).at(0)

    the_ram_datum.destroy

    redirect_to("/ram_data", { :notice => "Ram datum deleted successfully."} )
  end
end
