#' @title The "Not In" Operator \%nin\%, negation of \code{\link[base]{match}}
#'
#' @seealso \code{\link[base]{match}}
#'
#' @param ... see \%in\% details in \code{\link[base]{match}}
#'
#' @return a logical vector
#' @export
#'
#' @examples
#' c(1,2,3) %nin% c(1,2)
#' c("a","b") %nin% c("a","b")
`%nin%` = Negate(`%in%`)


#' @title The logit() function is a rebranding of \code{\link[stats]{qlogis}}
#'
#' @seealso \code{\link[stats]{qlogis}}
#'
#' @param ... see args of \code{\link[stats]{qlogis}}
#'
#' @return a numeric
#' @export
#'
#' @examples plot(x=seq(from=0,to=1,by=0.01),y=logit(seq(from=0,to=1,by=0.01)))
#' identical(logit(0.5),stats::qlogis(0.5))
logit = stats::qlogis


#' @title The expit() function is a rebranding of \code{\link[stats]{plogis}}
#'
#' @seealso \code{\link[stats]{plogis}}
#'
#' @param ... see args of see args of \code{\link[stats]{plogis}}
#'
#' @return a numeric
#' @export
#'
#' @examples plot(x=seq(from=-10,to=10,by=1),y=expit(seq(from=-10,to=10,by=1)))
#' identical(expit(10),stats::plogis(10))
expit = stats::plogis
