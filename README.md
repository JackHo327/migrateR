# migrateR
<!-- TOC -->

- [migrateR](#migrater)
  - [Prerequisites](#prerequisites)
  - [Instructions](#instructions)

<!-- /TOC -->

Scripts that can help you to migrate you r dev environment among multiple operating systems.

## Prerequisites

Make sure you've installed R on your new machines. *Just as a reference, my session info is shown below*:

```r
> sessionInfo()
R version 3.4.4 (2018-03-15)
Platform: x86_64-apple-darwin15.6.0 (64-bit)
Running under: macOS High Sierra 10.13.4

Matrix products: default
BLAS: /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/3.4/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

loaded via a namespace (and not attached):
[1] compiler_3.4.4 tools_3.4.4    yaml_2.1.18
```

## Instructions

- Fork this repo and clone it to your `old machine`.
- Run `Rscript consume.R OLD`.
- Check whether there is `target_list.txt` file that has been generated.

```bash
.
|----- consume.R
|----- LICENSE
|----- migrateR.R
|----- README.md
|----- target_list.txt
```

- Push your repo.
- Clone the updated repo to your `new machine`.
- Run `Rscript consume.R NEW`.

*ps: When see these error messages like below, you may need to handle them one by one, for example, do not choose the "y" option when the system asks you `whether you can install from sources the package which needs compilation.`, or if this situation can not be solved, you may need to Google it online because this might be derived from other problems*.

```r
> Rscript consume.R NEW
...truncated_output...
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
