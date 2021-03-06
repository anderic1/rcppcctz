\name{NEWS}
\title{News for Package \pkg{RcppCCTZ}}
\newcommand{\ghpr}{\href{https://github.com/eddelbuettel/rcppcctz/pull/#1}{##1}}
\newcommand{\ghit}{\href{https://github.com/eddelbuettel/rcppcctz/issues/#1}{##1}}

\section{Changes in version 0.2.3 (2017-06-19)}{
  \itemize{
    \item On Windows, the \code{TZDIR} environment variable is now set
    in \code{.onLoad()}
    \item Replaced \code{init.c} with registration code inside of
    \code{RcppExports.cpp} thanks to Rcpp 0.12.11.
  }
}

\section{Changes in version 0.2.2 (2017-04-20)}{
  \itemize{
    \item Synchronized with upstream CCTZ
    \item The \code{time_point} object is instantiated explicitly for
    nanosecond use which appears to be required on macOS
  }
}
\section{Changes in version 0.2.1 (2017-02-04)}{
  \itemize{
    \item Conversion from timepoint to two \code{double} values now
    rounds correctly (\ghpr{14} closing \ghit{12}, with thanks to
    Leonardo)
    \item The Description was expanded to stress the need for a modern
    C++11 compiler; g++-4.8 (as on 'trusty' eg in Travis CI) works
    \item Travis CI is now driven via \code{run.sh} from our fork
  }
}

\section{Changes in version 0.2.0 (2017-01-08)}{
  \itemize{
    \item Windows compilation was enabled by defining \code{OFFSET()} and
    \code{ABBR()} for MinGW (\ghpr{10} partially addressing \ghit{9})
    \item Windows use completed with backport of \code{std::get_time}
    from LLVM's libc++ to enable \code{strptime} semantics (Dan Dillon
    in \ghpr{11} completing \ghit{9})
    \item Timezone information on Windows is supplied via R's own copy
    of zoneinfo with \code{TZDIR} set (also \ghpr{10})
    \item The interface to \code{formatDouble} was cleaned up
  }
}

\section{Changes in version 0.1.0 (2016-12-11)}{
  \itemize{
    \item Synchronized with \code{CCTZ} upstream.
    \item New parsing and formating helpers for Datetime vectors
    \item New parsing and formating helpers for (two) \code{double}
    vectors representing full \code{std::chrono} nanosecond resolutions
    \item Updated documentation and examples.
  }
}

\section{Changes in version 0.0.5 (2016-07-09)}{
  \itemize{
    \item New utility example functions \code{toTz()} and \code{tzDiff}
    \item Synchronized with small upstream change for additional
    \code{#ifdef} for compiler differentiation
  }
}

\section{Changes in version 0.0.4 (2016-04-17)}{
  \itemize{
    \item Synchronized with \code{CCTZ} v2 upstream.
    \item Updated \code{examples.cpp} accordingly
  }
}

\section{Changes in version 0.0.3 (2016-01-17)}{
  \itemize{
    \item Synchronized with \code{CCTZ} upstream.
  }
}

\section{Changes in version 0.0.2 (2015-12-02)}{
  \itemize{
    \item Additional \code{#ifdef} statements suggested by Bradley White
    in \code{CCTZ} ticket #5 permitting compilation on Solaris -- with thanks
    to Jeroen for testing our branch.
  }
}

\section{Changes in version 0.0.1 (2015-12-01)}{
  \itemize{
    \item Initial CRAN upload.
    \item Package is functional and provides examples.
  }
}
