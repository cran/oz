\name{oz}
\alias{oz}
\title{Plot the Australian coastline and states}
\description{Plot the Australian coastline and states.}
\usage{
oz(states = TRUE, coast = TRUE, xlim = c(113, 154),
   ylim = c(-44, -10), add = FALSE, ar = 1, eps = 0.25,
   sections = 1:16, visible, ...)
}
\arguments{
  \item{states}{logical flag: include mainland internal state
    boundaries?}
  \item{coast}{logical flag: include coastline?}
  \item{xlim}{optional limits for the x-axis (longitude).}
  \item{ylim}{optional limits for the y-axis (latitude).  (N.B. all
    latitudes for Australia are south, and hence are NEGATIVE.)}
  \item{add}{logical flag.  If TRUE, the plot is superimposed on an
    existing plot.  Otherwise, a new plot is generated.}
  \item{ar}{aspect ratio: longitude to latitude.}
  \item{eps}{If \code{sections} (q.v.) is specified explicitly, the plot
    is enlarged four ways by this amount (degrees).}
  \item{sections}{integer vector specifying which \code{sections} of the
    plot are to be included in the range calculation.  The sections are
    as follows: 1-7, coastlines of WA(1), NT(2), QLD(3), NSW(4), VIC(5),
    TAS(6) and SA(7) respectively; sections 8-16 are internal mainland
    state boundaries: SA-WA(8), WA-NT(9), NT-SA(10), NT-QLD(11),
    QLD-SA(12), QLD-NSW(13), NSW-SA(14), NSW-VIC(15), VIC-SA(16).}
  \item{visible}{integer vector specifying which of the sections are
    actually to appear on the plot.}
  \item{...}{optional arguments which will be passed through
    \code{lines}.}

  Graphical parameters (see \code{par()}) may also be supplied as
  arguments to this function.
}
\examples{
oz()                    # the lot
oz(states=FALSE)        # coastlines only
oz(sections=6)          # Tasmania
oz(sections=c(7,8,10,12,14,16))         # South Australia
oz(sections=c(3,11:13), visible=c(3,13))# plot Queensland, but show just
                                        # coast and border with NSW.
}
\keyword{hplot}