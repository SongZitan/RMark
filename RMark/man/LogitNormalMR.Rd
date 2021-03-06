% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RMark-package.R
\docType{data}
\name{LogitNormalMR}
\alias{LogitNormalMR}
\title{Example of LogitNormal Mark-Resight model}
\format{A data frame with 35 observations on the following variable.
\describe{ \item{ch}{a character vector} }}
\description{
Data and example illustrating LogitNormal Mark-Resight model.
}
\examples{

data(LogitNormalMR)
logitNor.proc=process.data(LogitNormalMR,model="LogitNormalMR",
		counts=list("Unmarked seen"=c(96,68,59),
				    "Marked Unidentified"=c(0,0,0,0,1,1,1,0,0,3,0,1)),
			         time.intervals=c(0,0,0,1,0,0,0,1,0,0,0))
logitNor.ddl=make.design.data(logitNor.proc)
# Note that to get good starting values yo should specify a formula that allows use of the sin link
# MARK will ignore the use of the sin link and use log for parameters N and sigma
# after fitting this intial model you can use it for starting values with other model that
# do not require the sin link but always check to make sure the model is converging to 
# reasonable values.
mod=mark(logitNor.proc,logitNor.ddl,
 model.parameters=list(N=list(formula=~-1+session,link="sin"),
 sigma=list(formula=~-1+session,link="sin"),p=list(formula=~1,link="sin")))
summary(mod)

}
\keyword{datasets}
