% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/image.R
\docType{data}
\name{image}
\alias{image}
\title{The image data set}
\format{
Contains  2310 observations of instances from 7 outdoor images
\describe{
\item{Type}{has 7 types of outdoor images, brickface, cement,  foliage, grass, path, sky, and window.}
\item{X1}{the column of the center pixel of the region} 
\item{X2}{the row of the center pixel of the region. }
\item{X3}{the number of pixels in a region = 9. }
\item{X4}{the results of a line extraction algorithm that counts how many lines of length 5 (any orientation) with low contrast, less than or equal to 5, go through the region.}
\item{X5}{measure the contrast of horizontally adjacent pixels in the region. There are 6, the mean and standard deviation are given. This attribute is used as a vertical edge detector.}
\item{X6}{X5 sd}
\item{X7}{measures the contrast of vertically adjacent pixels. Used for horizontal line detection.}
\item{X8}{sd X7}
\item{X9}{the average over the region of (R + G + B)/3}
\item{X10}{the average over the region of the R value.}
\item{X11}{the average over the region of the B value.}
\item{X12}{the average over the region of the G value.}
\item{X13}{measure the excess red: (2R - (G + B)).}
\item{X14}{measure the excess blue: (2B - (G + R)).}
\item{X15}{measure the excess green: (2G - (R + B)).}
\item{X16}{3-d nonlinear transformation of RGB. (Algorithm can be found in Foley and VanDam, Fundamentals of Interactive Computer Graphics).}
\item{X17}{mean of X16.}
\item{X18}{hue  mean.}
}

A data frame contains 2310 observations and 19 variables
}
\usage{
data(image)
}
\description{
The image data set
}
\keyword{datasets}
