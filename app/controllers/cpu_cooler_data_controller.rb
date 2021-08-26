class CpuCoolerDataController < ApplicationController
  def index
    matching_cpu_cooler_data = CpuCoolerDatum.all

    @list_of_cpu_cooler_data = matching_cpu_cooler_data.order({ :created_at => :desc })

    render({ :template => "cpu_cooler_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_cpu_cooler_data = CpuCoolerDatum.where({ :id => the_id })

    @the_cpu_cooler_datum = matching_cpu_cooler_data.at(0)

    render({ :template => "cpu_cooler_data/show.html.erb" })
  end

  def create
    the_cpu_cooler_datum = CpuCoolerDatum.new
    the_cpu_cooler_datum.cooler_id = params.fetch("query_cooler_id")
    the_cpu_cooler_datum.part_type = params.fetch("query_part_type")
    the_cpu_cooler_datum.brand = params.fetch("query_brand")
    the_cpu_cooler_datum.name = params.fetch("query_name")
    the_cpu_cooler_datum.item_number = params.fetch("query_item_number")
    the_cpu_cooler_datum.price = params.fetch("query_price")
    the_cpu_cooler_datum.fan_size = params.fetch("query_fan_size")
    the_cpu_cooler_datum.fan_count = params.fetch("query_fan_count")
    the_cpu_cooler_datum.tdp = params.fetch("query_tdp")
    the_cpu_cooler_datum.air_or_water = params.fetch("query_air_or_water")
    the_cpu_cooler_datum.max_rpm = params.fetch("query_max_rpm")
    the_cpu_cooler_datum.link = params.fetch("query_link")
    the_cpu_cooler_datum.image = params.fetch("query_image")

    if the_cpu_cooler_datum.valid?
      the_cpu_cooler_datum.save
      redirect_to("/cpu_cooler_data", { :notice => "Cpu cooler datum created successfully." })
    else
      redirect_to("/cpu_cooler_data", { :notice => "Cpu cooler datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_cpu_cooler_datum = CpuCoolerDatum.where({ :id => the_id }).at(0)

    the_cpu_cooler_datum.cooler_id = params.fetch("query_cooler_id")
    the_cpu_cooler_datum.part_type = params.fetch("query_part_type")
    the_cpu_cooler_datum.brand = params.fetch("query_brand")
    the_cpu_cooler_datum.name = params.fetch("query_name")
    the_cpu_cooler_datum.item_number = params.fetch("query_item_number")
    the_cpu_cooler_datum.price = params.fetch("query_price")
    the_cpu_cooler_datum.fan_size = params.fetch("query_fan_size")
    the_cpu_cooler_datum.fan_count = params.fetch("query_fan_count")
    the_cpu_cooler_datum.tdp = params.fetch("query_tdp")
    the_cpu_cooler_datum.air_or_water = params.fetch("query_air_or_water")
    the_cpu_cooler_datum.max_rpm = params.fetch("query_max_rpm")
    the_cpu_cooler_datum.link = params.fetch("query_link")
    the_cpu_cooler_datum.image = params.fetch("query_image")

    if the_cpu_cooler_datum.valid?
      the_cpu_cooler_datum.save
      redirect_to("/cpu_cooler_data/#{the_cpu_cooler_datum.id}", { :notice => "Cpu cooler datum updated successfully."} )
    else
      redirect_to("/cpu_cooler_data/#{the_cpu_cooler_datum.id}", { :alert => "Cpu cooler datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_cpu_cooler_datum = CpuCoolerDatum.where({ :id => the_id }).at(0)

    the_cpu_cooler_datum.destroy

    redirect_to("/cpu_cooler_data", { :notice => "Cpu cooler datum deleted successfully."} )
  end
end
