Rails.application.routes.draw do

  #home page
  get("/", { :controller => "home", :action => "homepage"})

  # Routes for the Case datum resource:

  # CREATE
  post("/insert_case_datum", { :controller => "case_data", :action => "create" })
          
  # READ
  get("/case_data", { :controller => "case_data", :action => "index" })
  
  get("/case_data/:path_id", { :controller => "case_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_case_datum/:path_id", { :controller => "case_data", :action => "update" })
  
  # DELETE
  get("/delete_case_datum/:path_id", { :controller => "case_data", :action => "destroy" })

  #------------------------------

  # Routes for the Psu datum resource:

  # CREATE
  post("/insert_psu_datum", { :controller => "psu_data", :action => "create" })
          
  # READ
  get("/psu_data", { :controller => "psu_data", :action => "index" })
  
  get("/psu_data/:path_id", { :controller => "psu_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_psu_datum/:path_id", { :controller => "psu_data", :action => "update" })
  
  # DELETE
  get("/delete_psu_datum/:path_id", { :controller => "psu_data", :action => "destroy" })

  #------------------------------

  # Routes for the Ssd datum resource:

  # CREATE
  post("/insert_ssd_datum", { :controller => "ssd_data", :action => "create" })
          
  # READ
  get("/ssd_data", { :controller => "ssd_data", :action => "index" })
  
  get("/ssd_data/:path_id", { :controller => "ssd_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_ssd_datum/:path_id", { :controller => "ssd_data", :action => "update" })
  
  # DELETE
  get("/delete_ssd_datum/:path_id", { :controller => "ssd_data", :action => "destroy" })

  #------------------------------

  # Routes for the Cpu cooler datum resource:

  # CREATE
  post("/insert_cpu_cooler_datum", { :controller => "cpu_cooler_data", :action => "create" })
          
  # READ
  get("/cpu_cooler_data", { :controller => "cpu_cooler_data", :action => "index" })
  
  get("/cpu_cooler_data/:path_id", { :controller => "cpu_cooler_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_cpu_cooler_datum/:path_id", { :controller => "cpu_cooler_data", :action => "update" })
  
  # DELETE
  get("/delete_cpu_cooler_datum/:path_id", { :controller => "cpu_cooler_data", :action => "destroy" })

  #------------------------------

  # Routes for the Ram datum resource:

  # CREATE
  post("/insert_ram_datum", { :controller => "ram_data", :action => "create" })
          
  # READ
  get("/ram_data", { :controller => "ram_data", :action => "index" })
  
  get("/ram_data/:path_id", { :controller => "ram_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_ram_datum/:path_id", { :controller => "ram_data", :action => "update" })
  
  # DELETE
  get("/delete_ram_datum/:path_id", { :controller => "ram_data", :action => "destroy" })

  #------------------------------

  # Routes for the Mobo datum resource:

  # CREATE
  post("/insert_mobo_datum", { :controller => "mobo_data", :action => "create" })
          
  # READ
  get("/mobo_data", { :controller => "mobo_data", :action => "index" })
  
  get("/mobo_data/:path_id", { :controller => "mobo_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_mobo_datum/:path_id", { :controller => "mobo_data", :action => "update" })
  
  # DELETE
  get("/delete_mobo_datum/:path_id", { :controller => "mobo_data", :action => "destroy" })

  #------------------------------

  # Routes for the Gpu datum resource:

  # CREATE
  post("/insert_gpu_datum", { :controller => "gpu_data", :action => "create" })
          
  # READ
  get("/gpu_data", { :controller => "gpu_data", :action => "index" })
  
  get("/gpu_data/:path_id", { :controller => "gpu_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_gpu_datum/:path_id", { :controller => "gpu_data", :action => "update" })
  
  # DELETE
  get("/delete_gpu_datum/:path_id", { :controller => "gpu_data", :action => "destroy" })

  #------------------------------

  # Routes for the Cpu datum resource:

  # CREATE
  post("/insert_cpu_datum", { :controller => "cpu_data", :action => "create" })
          
  # READ
  get("/cpu_data", { :controller => "cpu_data", :action => "index" })
  
  get("/cpu_data/:path_id", { :controller => "cpu_data", :action => "show" })
  
  # UPDATE
  
  post("/modify_cpu_datum/:path_id", { :controller => "cpu_data", :action => "update" })
  
  # DELETE
  get("/delete_cpu_datum/:path_id", { :controller => "cpu_data", :action => "destroy" })

  #------------------------------

end
