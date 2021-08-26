namespace :slurp do
  desc "TODO"
  task transactions: :environment do

    #insert data destroy
    CpuData.destroy_all
    GpuData.destroy_all
    MoboData.destroy_all
    RamData.destroy_all
    CpuCoolerData.destroy_all
    StorageData.destroy_all
    PsuData.destroy_all
    CaseData.destroy_all


    require "csv"

    #cpu
    csv1_text = File.read(Rails.root.join("lib", "csvs", "cpu_data.csv"))
    csv1 = CSV.parse(csv1_text, :headers => true, :encoding => "ISO-8859-1")

    csv1.each do |row|
      t = CpuData.new
      t.cpu_id = row["cpu_id"]
      t.part_type = row["part_type"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.cores = row["cores"]
      t.threads = row["threads"]
      t.base_clock = row["base_clock"]
      t.boost_clock = row["boost_clock"]
      t.l3_cache = row["l3_cache"]
      t.socket = row["socket"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #gpu
    csv2_text = File.read(Rails.root.join("lib", "csvs", "gpu_data.csv"))
    csv2 = CSV.parse(csv2_text, :headers => true, :encoding => "ISO-8859-1")

    csv2.each do |row|
      t = GpuDatum.new
      t.gpu_id = row["gpu_id"]
      t.part_type = row["part_type"]
      t.series = row["series"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.cuda_cores = row["cuda_cores"]
      t.boost_clock = row["boost_clock"]
      t.vram = row["vram"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #mobo
    csv3_text = File.read(Rails.root.join("lib", "csvs", "mobo_data.csv"))
    csv3 = CSV.parse(csv3_text, :headers => true, :encoding => "ISO-8859-1")

    csv3.each do |row|
      t = MoboData.new
      t.mobo_id = row["mobo_id"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.socket = row["socket"]
      t.chipset = row["chipset"]
      t.size = row["size"]
      t.ram = row["ram"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #memory
    csv4_text = File.read(Rails.root.join("lib", "csvs", "ram_data.csv"))
    csv4 = CSV.parse(csv4_text, :headers => true, :encoding => "ISO-8859-1")

    csv4.each do |row|
      t = RamData.new
      t.ram_id = row["ram_id"]
      t.part_type = row["part_type"]
      t.series = row["series"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.mem_speed = row["mem_speed"]
      t.capacity = row["capacity"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #cpu_cooler
    csv5_text = File.read(Rails.root.join("lib", "csvs", "cpu_cooler_data.csv"))
    csv5 = CSV.parse(csv5_text, :headers => true, :encoding => "ISO-8859-1")

    csv5.each do |row|
      t = CpuCoolerData.new
      t.cooler_id = row["cooler_id"]
      t.part_type = row["part_type"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.fan_size = row["fan_size"]
      t.fan_count = row["fan_count"]
      t.tdp = row["tdp"]
      t.air_or_water = row["air_or_water"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #storage
    csv6_text = File.read(Rails.root.join("lib", "csvs", "ssd_data.csv"))
    csv6 = CSV.parse(csv6_text, :headers => true, :encoding => "ISO-8859-1")

    csv6.each do |row|
      t = SsdData.new
      t.storage_id = row["storage_id"]
      t.part_type = row["part_type"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.storage_size = row["storage_size"]
      t.read_speed = row["read_speed"]
      t.write_speed = row["write_speed"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #psu
    csv7_text = File.read(Rails.root.join("lib", "csvs", "psu_data.csv"))
    csv7 = CSV.parse(csv7_text, :headers => true, :encoding => "ISO-8859-1")

    csv7.each do |row|
      t = PsuData.new
      t.psu_id = row["cooler_id"]
      t.part_type = row["part_type"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.wattage = row["wattage"]
      t.certification = row["certification"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

    #case
    csv8_text = File.read(Rails.root.join("lib", "csvs", "case_data.csv"))
    csv8 = CSV.parse(csv8_text, :headers => true, :encoding => "ISO-8859-1")

    csv8.each do |row|
      t = CaseData.new
      t.case_id = row["case_id"]
      t.part_type = row["part_type"]
      t.brand = row["brand"]
      t.name = row["name"]
      t.item_number = row["item_number"]
      t.price = row["price"]
      t.size = row["size"]
      t.color = row["color"]
      t.link = row["link"]
      t.image = row["image"]
      
      t.save
    end

  end

end
