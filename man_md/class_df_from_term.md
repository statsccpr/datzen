# `class_df_from_term`: the class_df_from_term() function returns the class of the data frame column(s) involved in a term

## Usage

```r
class_df_from_term(model, class_post_formula = FALSE)
```


## Arguments

Argument      |Description
------------- |----------------
```model```     |     an 'lm' object
```class_post_formula```     |     If FALSE (default), returns class of df col BEFORE any in-formula transformations applied to terms. If TRUE, returns class of df col AFTER any in-formula transformations applied to terms.

## Value


 a named list containing named character vectors.
 The list names are model terms.
 The vector names are data frame column names.
 The vector values are characters for the data frame column's class.
 NOTE: If any in-formula transformations were applied, the data.frame referenced would represent an 'intermediate' one
 that is not exactly the originating data.frame passed to the 'data' arg of lm(data=.).


## Examples

```r 
 
 model = lm(data = iris,Sepal.Length ~ Species + as.numeric(Species) +
 Species:Sepal.Width + as.factor(Sepal.Width) +
 as.factor(Sepal.Width)*as.factor(Petal.Length) +
 as.numeric(Species)*as.factor(Petal.Length) +
 poly(Sepal.Width,degree = 2))
 
 preform = class_df_from_term(model,class_post_formula = TRUE)
 names(preform)
 (preform[5])
 (preform[5]) %in% 'nmatrix.2'
 
 # does not map "poly(Sepal.Width, degree = 2)" name of list entry
 # to original "Sepal.Width" name of vector entry
 
 postform = class_df_from_term(model,class_post_formula = FALSE)
 names(postform)
 (postform[5])
 (postform[5]) %in% 'nmatrix.2'
 
 # does map "poly(Sepal.Width, degree = 2)" name of list entry
 # to original "Sepal.Width" name of vector entry
 ``` 
