# Title

random_rpql() allows the user to do variable selection for fixed effect
and random effect in GLMMs model by using rpql(Hui,et al,2017) and
random lasso(Wang, et al., 2011)

## Usage

``` r
random_rpql(data,q1_fix,q1_random,bt1,fixed_effect,random_effect,ycol,id_vector,no_scale,cluster_id,within_cluster_id,family="gaussian",lam1,verbose=T,ci_criteria1=5,pen.type1="adl",random_draw_sample1=0.5,q2_fix,q2_random,bt2,lam2,pen.type2="adl",ci_criteria2=5,random_draw_sample2=0.5,use_lmer=F,use_fre_fun1=T)
```

## Arguments

- data:

  dataset without missing data

- q1_fix:

  number of fixed effects used in each bootstrapping step in first step
  of random rpql

- q1_random:

  number of random effects used in each bootstrapping step in first step
  of random rpql

- bt1:

  number of bootstrapping in first step of random rpql

- fixed_effect:

  candidate variables used to fixed effects

- random_effect:

  candidate variables used to random effects

- ycol:

  outcome variables

- id_vector:

  column names for groups (cross-sectional design)/participants id(for
  longitudinal design) and within-units id

- no_scale:

  variable names of discrete variables

- cluster_id:

  variable name for participants id/group id

- within_cluster_id:

  variable name for time/id for participant within each
  unit(participant/group)

- family:

  The distribution for the outcome in GLMM. Supported arguments include:
  gaussian(), binomial().

- lam1:

  a vector for tuning parameters used in rPQL for each bootstrapping
  step in first step

- verbose:

  show the running details

- ci_criteria1:

  criteria to choose the optimal tuning parameters for step 1, details
  refers to Hui,et al,2017

- pen.type1:

  the type of penalty used in random rpql first step. supported argument
  include: "lasso" for standard lasso(Tibshirani,1996),"adl"for adaptive
  lasso(Zou,2006)

- random_draw_sample1:

  the proportion sample used in each bootstrapping in first step

- q2_fix:

  number of fixed effects used in each bootstrapping step in second step
  of random rpql

- q2_random:

  number of random effects used in each bootstrapping step in second
  step of random rpql

- bt2:

  number of bootstrapping in second step of random rpql

- lam2:

  a vector for tuning parameters used in rPQL for each bootstrapping
  step in first step

- pen.type2:

  the type of penalty used in random rpql second step

- ci_criteria2:

  criteria to choose the optimal tuning parameters for step 2, details
  refers to Hui,et al,2017

- random_draw_sample2:

  the proportion sample used in each bootstrapping in second step

- use_lmer:

  if pen.type2 is true, whether use lmer to derived the weights of
  penalty. if use_lmer=T, using lmer to calculate weights for "adl".
  otherwise, the weights for "adl" are calculated by the importance
  index obtained by first step

- use_fre_fun1:

  whether used frequency list to calculate importance index

## Value

variable importance plots and tables for fixed effects and random
effects

## Details

random rPQL

## References

Hui, F. K. C., Mueller, S., and Welsh, A.H. (2017). Hierarchical
Selection of Fixed and Random Effects in Generalized Linear Mixed
Models. Statistica Sinica, 27, 501-518. Wang, S., Nan, B., Rosset, S., &
Zhu, J. (2011). Random lasso. The annals of applied statistics, 5(1),
468.

## Examples

``` r
# \dontrun{
id_vector<- c("participant_id", "wave")

no_scale <- c("participant_id", "wave")
cluster_id="participant_id"
within_cluster_id="wave"
ycol <- "y"
family<-"gaussian"
lam1=exp(seq(from=log(1e-4),to=log(1e-8),length.out=100))
lam2=exp(seq(from=log(1e-1),to=log(1e-8),length.out=100))
 random_rpql(data,q1_fix=4,q1_random=3,bt1=200,fixed_effect,random_effect,ycol,id_vector,no_scale,cluster_id,within_cluster_id,family="gaussian",lam1,verbose=T,ci_criteria1=5,pen.type1="adl",random_draw_sample1=0.5,q2_fix=4,q2_random=3,bt2=200,lam2,pen.type2="adl",ci_criteria2=4,random_draw_sample2=0.5,use_lmer=F,use_fre_fun1=T)
#> Error in UseMethod("select"): no applicable method for 'select' applied to an object of class "function"
 # }
```
