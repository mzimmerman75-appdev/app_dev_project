class CpuDataController < ApplicationController
  def index
    matching_cpu_data = CpuDatum.all

    @list_of_cpu_data = matching_cpu_data.order({ :created_at => :desc })

    render({ :template => "cpu_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_cpu_data = CpuDatum.where({ :id => the_id })

    @the_cpu_datum = matching_cpu_data.at(0)

    render({ :template => "cpu_data/show.html.erb" })
  end

  def create
    the_cpu_datum = CpuDatum.new
    the_cpu_datum.cpu_id = params.fetch("query_cpu_id")
    the_cpu_datum.part_type = params.fetch("query_part_type")
    the_cpu_datum.brand = params.fetch("query_brand")
    the_cpu_datum.name = params.fetch("query_name")
    the_cpu_datum.item_number = params.fetch("query_item_number")
    the_cpu_datum.price = params.fetch("query_price")
    the_cpu_datum.cores = params.fetch("query_cores")
    the_cpu_datum.threads = params.fetch("query_threads")
    the_cpu_datum.base_clock = params.fetch("query_base_clock")
    the_cpu_datum.boost_clock = params.fetch("query_boost_clock")
    the_cpu_datum.l3_cache = params.fetch("query_l3_cache")
    the_cpu_datum.socket = params.fetch("query_socket")
    the_cpu_datum.link = params.fetch("query_link")
    the_cpu_datum.image = params.fetch("query_image")

    if the_cpu_datum.valid?
      the_cpu_datum.save
      redirect_to("/cpu_data", { :notice => "Cpu datum created successfully." })
    else
      redirect_to("/cpu_data", { :notice => "Cpu datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_cpu_datum = CpuDatum.where({ :id => the_id }).at(0)

    the_cpu_datum.cpu_id = params.fetch("query_cpu_id")
    the_cpu_datum.part_type = params.fetch("query_part_type")
    the_cpu_datum.brand = params.fetch("query_brand")
    the_cpu_datum.name = params.fetch("query_name")
    the_cpu_datum.item_number = params.fetch("query_item_number")
    the_cpu_datum.price = params.fetch("query_price")
    the_cpu_datum.cores = params.fetch("query_cores")
    the_cpu_datum.threads = params.fetch("query_threads")
    the_cpu_datum.base_clock = params.fetch("query_base_clock")
    the_cpu_datum.boost_clock = params.fetch("query_boost_clock")
    the_cpu_datum.l3_cache = params.fetch("query_l3_cache")
    the_cpu_datum.socket = params.fetch("query_socket")
    the_cpu_datum.link = params.fetch("query_link")
    the_cpu_datum.image = params.fetch("query_image")

    if the_cpu_datum.valid?
      the_cpu_datum.save
      redirect_to("/cpu_data/#{the_cpu_datum.id}", { :notice => "Cpu datum updated successfully."} )
    else
      redirect_to("/cpu_data/#{the_cpu_datum.id}", { :alert => "Cpu datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_cpu_datum = CpuDatum.where({ :id => the_id }).at(0)

    the_cpu_datum.destroy

    redirect_to("/cpu_data", { :notice => "Cpu datum deleted successfully."} )
  end
end
