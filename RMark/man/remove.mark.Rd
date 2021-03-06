% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove.mark.r
\name{remove.mark}
\alias{remove.mark}
\title{Remove mark models from list}
\usage{
remove.mark(marklist, model.numbers)
}
\arguments{
\item{marklist}{an object of class "marklist" created by
\code{\link{collect.models}} or \code{\link{merge.mark}}}

\item{model.numbers}{vector of one more model numbers to remove from the
marklist}
}
\value{
model.list: a list of \code{mark} models and a table of model
results.
}
\description{
Remove one or more mark models from a marklist
}
\examples{

# see example in dipper

}
\seealso{
\code{\link{collect.models}},\code{\link{merge.mark}},\code{\link{run.models}},\code{\link{model.table}},\code{\link{dipper}}
}
\author{
Jeff Laake
}
\keyword{utility}
