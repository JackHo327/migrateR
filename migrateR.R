# check whether dplyr exists.
if(!require("dplyr", quietly = T, warn.conflicts = F)){
      install.packages("dplyr", repos="https://cloud.r-project.org/", lib = .libPaths(), quiet = T, verbose = T)
      library(dplyr,quietly = T, warn.conflicts = F)
}
machine <- toupper(machine)
# print(paste(machine, "machine", spe=" "))
if(machine == "OLD"){
      # get the current package list.
      package_list <- data.frame(installed.packages(),stringsAsFactors = F) %>% select(1)
      # comment the next line only if you do not want to use the Microsoft R or your new machine do not have the Microsoft R installed.
      package_list <- package_list %>% filter(!grepl(pattern = "Microsoft*|Revo*|Compatibili*|mrupdate", x = Package))
      # output the targeted package list.
      write.table(package_list, "./target_list.txt", sep = ",", row.names = F, col.names = F)
      if(file.exists('./target_list.txt')){
            message("Finished ouput.")
      }else{
            message("No targeted list file was generated.")
      }
}else if(machine == "NEW"){
      # check whether the file exists.
      if(!file.exists("./target_list.txt")){
            stop("The target_list.txt file not found.")
      }else{
            # find out the package that are needed to be downloaded.
           target_list <- read.table("./target_list.txt",sep = ",",header = F)
           packages_already_exist <- data.frame(installed.packages(),stringsAsFactors = F) %>% select(1)
           need_to_install <- setdiff(target_list[,1], packages_already_exist[,1])
           if(need_to_install %>% length() > 0){
                 # install packages in a row.
                 try(install.packages(c(need_to_install),repos="https://cloud.r-project.org/",verbose = T, dependencies = T, Ncpus = parallel::detectCores()-1),silent = F)
                 # update packages.
                 update.packages(ask = F)
           }else{
                 message("No packages that are needed to be installed.")
           }
           # update the target_list.txt file
           # get the current package list.
           package_list <- data.frame(installed.packages(),stringsAsFactors = F) %>% select(1)
           # comment the next line only if you do not want to use the Microsoft R or your new machine do not have the Microsoft R installed.
           package_list <- package_list %>% write.table("./target_list.txt", sep = ",", row.names = F, col.names = F)
           message("Updated the new target_list file.")
      }
}else{
      stop("Just enter NEW or OLD. Try it again.")
}