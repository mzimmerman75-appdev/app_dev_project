class MoboDataController < ApplicationController
  def index
    matching_mobo_data = MoboDatum.all

    @list_of_mobo_data = matching_mobo_data.order({ :created_at => :desc })

    render({ :template => "mobo_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_mobo_data = MoboDatum.where({ :id => the_id })

    @the_mobo_datum = matching_mobo_data.at(0)

    render({ :template => "mobo_data/show.html.erb" })
  end

  def create
    the_mobo_datum = MoboDatum.new
    the_mobo_datum.mobo_id = params.fetch("query_mobo_id")
    the_mobo_datum.brand = params.fetch("query_brand")
    the_mobo_datum.name = params.fetch("query_name")
    the_mobo_datum.item_number = params.fetch("query_item_number")
    the_mobo_datum.price = params.fetch("query_price")
    the_mobo_datum.socket = params.fetch("query_socket")
    the_mobo_datum.chipset = params.fetch("query_chipset")
    the_mobo_datum.size = params.fetch("query_size")
    the_mobo_datum.ram = params.fetch("query_ram")
    the_mobo_datum.link = params.fetch("query_link")
    the_mobo_datum.image = params.fetch("query_image")

    if the_mobo_datum.valid?
      the_mobo_datum.save
      redirect_to("/mobo_data", { :notice => "Mobo datum created successfully." })
    else
      redirect_to("/mobo_data", { :notice => "Mobo datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_mobo_datum = MoboDatum.where({ :id => the_id }).at(0)

    the_mobo_datum.mobo_id = params.fetch("query_mobo_id")
    the_mobo_datum.brand = params.fetch("query_brand")
    the_mobo_datum.name = params.fetch("query_name")
    the_mobo_datum.item_number = params.fetch("query_item_number")
    the_mobo_datum.price = params.fetch("query_price")
    the_mobo_datum.socket = params.fetch("query_socket")
    the_mobo_datum.chipset = params.fetch("query_chipset")
    the_mobo_datum.size = params.fetch("query_size")
    the_mobo_datum.ram = params.fetch("query_ram")
    the_mobo_datum.link = params.fetch("query_link")
    the_mobo_datum.image = params.fetch("query_image")

    if the_mobo_datum.valid?
      the_mobo_datum.save
      redirect_to("/mobo_data/#{the_mobo_datum.id}", { :notice => "Mobo datum updated successfully."} )
    else
      redirect_to("/mobo_data/#{the_mobo_datum.id}", { :alert => "Mobo datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_mobo_datum = MoboDatum.where({ :id => the_id }).at(0)

    the_mobo_datum.destroy

    redirect_to("/mobo_data", { :notice => "Mobo datum deleted successfully."} )
  end
end
