{smcl}
{* *! version 1.0  28march2018}{...}
{cmd:help twexp}{right: ({browse "https://doi.org/10.1177/1536867X20931006":SJ20-2: st0604})}
{hline}

{title:Title}

{p2colset 5 14 16 2}{...}
{p2col :{cmd:twexp} {hline 2}}Method of moment estimators from Jochmans (2017)
for fitting exponential regression models with two-way fixed effects from 
panel data with self links{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 13 2}
{cmd:twexp} {varlist}
{ifin}{cmd:,}
{opth indn(varname)} {opt indm(varname)}
{cmd:model(GMM1}|{cmd:GMM2)}
[{opt initial(vector)}]

{synoptset 19 tabbed}
{marker semiparopts}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opth indn(varname)}}declare the cross-sectional dimension of the
panel{p_end}
{p2coldent :* {opth indm(varname)}}declare the time-series dimension of the panel{p_end}
{p2coldent :* {cmd:model(GMM1}|{cmd:GMM2)}}determine whether {cmd:GMM1} or {cmd:GMM2} is implemented; see Jochmans and Verardi (2020){p_end}
{synopt:{opt initial(vector)}}specify the starting value for the numerical
optimization; the default is the zero vector{p_end}
{synoptline}
{p2colreset}{...}
{phang}
* {opt indn(varname)}, {opt indm(varname)}, and {cmd:model(GMM1}|{cmd:GMM2)}
are required.


{title:Description}

{pstd}
{cmd:twexp} computes Jochmans's (2017) method of moment estimators in a
computationally efficient manner.


{title:Examples}

{pstd}
Download the dataset from
{browse "http://cameron.econ.ucdavis.edu/mmabook/patr7079.asc"} and name
variables

{phang2}
{cmd:. infile CUSIP ARDSSIC SCISECT LOGK SUMPAT LOGR70 LOGR71 LOGR72 LOGR73}
{cmd:LOGR74 LOGR75 LOGR76 LOGR77 LOGR78 LOGR79 PAT70 PAT71 PAT72}
{cmd:PAT73 PAT74 PAT75 PAT76 PAT77 PAT78 PAT79}
{cmd:using "http://cameron.econ.ucdavis.edu/mmabook/patr7079.asc"}{p_end}

{phang2}{cmd:. generate id = _n}{p_end}

{phang2}{cmd:. reshape long PAT LOGR, i(id) j(year)}{p_end}

{phang2}{cmd:. twexp PAT LOGR, indn(id) indm(year) model(GMM1)}{p_end}

{phang2}{cmd:. matrix init=e(b)'}{p_end}
{phang2}{cmd:. twexp PAT LOGR, indn(id) indm(year) model(GMM2) init(init)}


{title:References}

{phang}
Jochmans, K. 2017. Two-way models for gravity.
{it:Review of Economics and Statistics}: 99: 478-485.
{browse "https://doi.org/10.1162/REST_a_00620":https://doi.org/10.1162/REST_a_00620}.

{phang}
Jochmans, K., and V. Verardi. 2020.
Fitting exponential regression models with two-way fixed effects.
{it:Stata Journal} 20: 435-467.
{browse "https://doi.org/10.1177/1536867X20931006"}.


{title:Authors}

{pstd}Koen Jochmans{p_end}
{pstd}University of Cambridge{p_end}
{pstd}Cambridge, UK{p_end}
{pstd}kj345@cam.ac.uk{p_end}

{pstd}Vincenzo Verardi{p_end}
{pstd}FNRS-UNamur{p_end}
{pstd}Namur, Belgium{p_end}
{pstd}vverardi@unamur.be{p_end}


{title:Also see}

{p 4 14 2}
Article:  {it:Stata Journal}, volume 20, number 2: {browse "https://doi.org/10.1177/1536867X20931006":st0604}{p_end}

{p 7 14 2}
Help:  {helpb twgravity} (if installed){p_end}
