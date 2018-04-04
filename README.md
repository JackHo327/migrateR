# migrateR

*Scripts that can help you migrate you r dev environment among multiple operating systems*.


## Instructions:

- Fork this repo and clone it to your `old machine`.
- Run `Rscript consume.R OLD`.
- Check whether there is `target_list.txt` file has been generated.


```bash
.
|----- consume.R
|----- LICENSE
|----- migrateR.R
|----- README.md
|----- target_list.txt
```

- Push your repo.
- Clone the updated repo to `new machine`.
- Run `Rscript consume.R NEW`.

ps: When see the error messages below, you may need to handle them one by one, and do not choose the "y" option when the system asks you `whether you can to install from sources the package which needs compilian` or just search online.

```r
Error in contrib.url(repos, type) :
  trying to use CRAN without setting a mirror
Calls: source ... update.packages -> available.packages -> contrib.url
In addition: Warning messages:
1: packages ‘BiocInstaller’, ‘deployrRserve’, ‘doRSR’, ‘gganimate’, ‘ggradar’, ‘googleCharts’, ‘impute’, ‘lego’, ‘mrsdeploy’, ‘olapR’, ‘openNLPmodels.en’, ‘parallelRandomForest’, ‘r4ds’, ‘rCharts’, ‘rhdf5’, ‘Rweibo’, ‘slidify’, ‘slidifyLibraries’, ‘sqlrutils’, ‘stockPortfolio’, ‘taskscheduleR’, ‘translations’, ‘zlibbioc’ are not available (for R version 3.4.4)
2: In install.packages(c(need_to_install), repos = "https://cloud.r-project.org/",  :
  installation of package ‘lmtest’ had non-zero exit status
3: In install.packages(c(need_to_install), repos = "https://cloud.r-project.org/",  :
  installation of package ‘ReporteRs’ had non-zero exit status
4: In install.packages(c(need_to_install), repos = "https://cloud.r-project.org/",  :
  installation of package ‘rgl’ had non-zero exit status
5: In install.packages(c(need_to_install), repos = "https://cloud.r-project.org/",  :
  installation of package ‘Rmpi’ had non-zero exit status
6: In install.packages(c(need_to_install), repos = "https://cloud.r-project.org/",  :
  installation of package ‘spdep’ had non-zero exit status
Execution halted
```