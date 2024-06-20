{smcl}
{* *! version 1.0  28march2018}{...}
{cmd:help twgravity}{right: ({browse "https://doi.org/10.1177/1536867X20931006":SJ20-2: st0604})}
{hline}

{title:Title}

{p2colset 5 18 20 2}{...}
{p2col :{cmd:twgravity} {hline 2}}Method of moment estimators from Jochmans (2017) for fitting exponential regression models with two-way fixed effects from a cross-section of data on dyadic interactions{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 17 2}
{cmd:twgravity} {varlist} {ifin}{cmd:,}
{opth indn(varname)} {opt indm(varname)}
{cmd:model(GMM1}|{cmd:GMM2)}
[{opt initial(vector)}]

{synoptset 19 tabbed}
{marker semiparopts}{...}
{synopthdr}
{synoptline}
{p2coldent :* {opth indn(varname)}}declare the cross-sectional dimension of the panel{p_end}
{p2coldent :* {opth indm(varname)}}declare the time-series dimension of the panel{p_end}
{p2coldent :* {cmd:model(GMM1}|{cmd:GMM2)}}determine whether {cmd:GMM1} or {cmd:GMM2} is implemented; see Jochmans and Verardi (2020){p_end}
{synopt:{opt initial(vector)}}specify the starting value for the numerical optimization; the default is the zero vector{p_end}
{synoptline}
{p2colreset}{...}
{phang}
* {opt indn(varname)}, {opt indm(varname)}, and {cmd:model(GMM1}|{cmd:GMM2)}
are required.


{title:Description}

{pstd}
{cmd:twgravity} computes Jochmans's (2017) method of moment estimators in a
computationally efficient manner.


{title:Examples}

{pstd}
Download {cmd:Log of Gravity.dta} at
{browse "http://personal.lse.ac.uk/tenreyro/regressors.zip"}

{phang2}{cmd:. use "Log of Gravity.dta"}{p_end}

{phang2}
{cmd:. twgravity trade ldist border comlang colony comfrt_wto, indn(s2_ex) indm(s1_im) model(GMM2)}{p_end}


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
Help:  {helpb twexp} (if installed){p_end}
