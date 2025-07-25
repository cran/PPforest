% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PPforest.R
\name{PPforest}
\alias{PPforest}
\title{Projection Pursuit Random Forest}
\usage{
PPforest(data, y, std = 'scale', size.tr, m, PPmethod, size.p,
 lambda = .1, parallel = FALSE, cores = 2, rule = 1)
}
\arguments{
\item{data}{Data frame with the complete data set.}

\item{y}{A character with the name of the response variable.}

\item{std}{if TRUE standardize the data set, needed to compute global importance measure.}

\item{size.tr}{is the size proportion of the training if we want to split the data in training and test.}

\item{m}{is the number of bootstrap replicates, this corresponds with the number of trees to grow. To ensure that each observation is predicted a few times we have to select this number no too small. \code{m = 500} is by default.}

\item{PPmethod}{is the projection pursuit index to optimize in each classification tree. The options are \code{LDA} and \code{PDA}, linear discriminant and penalized linear discriminant. By default it is \code{LDA}.}

\item{size.p}{proportion of variables randomly sampled in each split.}

\item{lambda}{penalty parameter in PDA index and is between 0 to 1 . If \code{lambda = 0}, no penalty parameter is added and the PDA index is the same as LDA index. If \code{lambda = 1} all variables are treated as uncorrelated. The default value is \code{lambda = 0.1}.}

\item{parallel}{logical condition, if it is TRUE then  parallelize the function}

\item{cores}{number of cores used in the parallelization}

\item{rule}{split rule 1: mean of two group means 2: weighted mean of two group means - weight with group size 3: weighted mean of two group means - weight with group sd 4: weighted mean of two group means - weight with group se 5: mean of two group medians 6: weighted mean of two group medians - weight with group size 7: weighted mean of two group median - weight with group IQR 8: weighted mean of two group median - weight with group IQR and size}
}
\value{
An object of class \code{PPforest} with components.
\item{prediction.training}{predicted values for training data set.}
\item{training.error}{error of the training data set.}
\item{prediction.test}{predicted values for the test data set if \code{testap = TRUE}(default).}
\item{error.test}{error of the test data set if \code{testap = TRUE}(default).}
\item{oob.error.forest}{out of bag error in the forest.}
\item{oob.error.tree}{out of bag error for each tree in the forest.}
\item{boot.samp}{information of bootrap samples.}
\item{output.trees}{output from a \code{trees_pp} for each bootrap sample.}
\item{proximity}{Proximity matrix, if two cases are classified in the same terminal node then the proximity matrix is increased by one in \code{PPforest} there are one terminal node per class.}
\item{votes}{ a matrix with one row for each input data point and one column for each class, giving the fraction of (OOB) votes from the \code{PPforest}.}
\item{n.tree}{number of trees grown in \code{PPforest}.}
\item{n.var}{number of predictor variables selected to use for spliting at each node.}
\item{type}{classification.}
\item{confusion}{confusion matrix of the prediction (based on OOB data).}
\item{call}{the original call to \code{PPforest}.}
\item{train}{is the training data based on \code{size.tr} sample proportion}
\item{test}{is the test data based on \code{1-size.tr} sample proportion}
}
\description{
\code{PPforest} implements a random forest using projection pursuit trees algorithm (based on PPtreeViz package).
}
\examples{
#crab example with all the observations used as training
set.seed(123)
pprf.crab <- PPforest(data = crab, y = 'Type',
 std = 'no', size.tr = 0.8, m = 100, size.p = 1, 
 PPmethod = 'LDA' , parallel = TRUE, cores = 2, rule = 1)
pprf.crab

}
\references{
da Silva, N., Cook, D., & Lee, E. K. (2021). A projection pursuit forest 
algorithm for supervised classification. Journal of Computational and Graphical Statistics,
30(4), 1168-1180.
}
