## == start script
pc_name <- tail(unlist(strsplit(path.expand('~'), "/")), n=1)
new_lib <- paste0("C:\\Users\\",pc_name,"\\R")
dir.create(new_lib)
##+Rconfigure_default.R
library(utils)
##+Using+Internet+Explorer+proxy+settings+is
##+often+helpful+in+an+IT+controlled+environment
setInternet2(TRUE)
##+PreKselect+my+nearest+CRAN+mirror+in+London
options(repos='http://cran.ma.imperial.ac.uk/')
##+Set+default+directory+for+user+installed+packages
.libPaths(c(new_lib,.libPaths()))