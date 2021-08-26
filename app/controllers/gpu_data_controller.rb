class GpuDataController < ApplicationController
  def index
    matching_gpu_data = GpuDatum.all

    @list_of_gpu_data = matching_gpu_data.order({ :created_at => :desc })

    render({ :template => "gpu_data/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_gpu_data = GpuDatum.where({ :id => the_id })

    @the_gpu_datum = matching_gpu_data.at(0)

    render({ :template => "gpu_data/show.html.erb" })
  end

  def create
    the_gpu_datum = GpuDatum.new
    the_gpu_datum.gpu_id = params.fetch("query_gpu_id")
    the_gpu_datum.part_type = params.fetch("query_part_type")
    the_gpu_datum.series = params.fetch("query_series")
    the_gpu_datum.brand = params.fetch("query_brand")
    the_gpu_datum.name = params.fetch("query_name")
    the_gpu_datum.item_number = params.fetch("query_item_number")
    the_gpu_datum.price = params.fetch("query_price")
    the_gpu_datum.cuda_cores = params.fetch("query_cuda_cores")
    the_gpu_datum.boost_clock = params.fetch("query_boost_clock")
    the_gpu_datum.vram = params.fetch("query_vram")
    the_gpu_datum.link = params.fetch("query_link")
    the_gpu_datum.image = params.fetch("query_image")

    if the_gpu_datum.valid?
      the_gpu_datum.save
      redirect_to("/gpu_data", { :notice => "Gpu datum created successfully." })
    else
      redirect_to("/gpu_data", { :notice => "Gpu datum failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_gpu_datum = GpuDatum.where({ :id => the_id }).at(0)

    the_gpu_datum.gpu_id = params.fetch("query_gpu_id")
    the_gpu_datum.part_type = params.fetch("query_part_type")
    the_gpu_datum.series = params.fetch("query_series")
    the_gpu_datum.brand = params.fetch("query_brand")
    the_gpu_datum.name = params.fetch("query_name")
    the_gpu_datum.item_number = params.fetch("query_item_number")
    the_gpu_datum.price = params.fetch("query_price")
    the_gpu_datum.cuda_cores = params.fetch("query_cuda_cores")
    the_gpu_datum.boost_clock = params.fetch("query_boost_clock")
    the_gpu_datum.vram = params.fetch("query_vram")
    the_gpu_datum.link = params.fetch("query_link")
    the_gpu_datum.image = params.fetch("query_image")

    if the_gpu_datum.valid?
      the_gpu_datum.save
      redirect_to("/gpu_data/#{the_gpu_datum.id}", { :notice => "Gpu datum updated successfully."} )
    else
      redirect_to("/gpu_data/#{the_gpu_datum.id}", { :alert => "Gpu datum failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_gpu_datum = GpuDatum.where({ :id => the_id }).at(0)

    the_gpu_datum.destroy

    redirect_to("/gpu_data", { :notice => "Gpu datum deleted successfully."} )
  end
end
