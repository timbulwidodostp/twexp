*! version 1.0.1 31oct2015
program define vlookup, sortpreserve
	version 8.0
	syntax varname, Generate(name) Key(varname) Value(varname)
	qui {
		tempvar g k
		egen `k' = group(`key')
		egen `g' = group(`key' `value')
		local k = `k'[_N]
		local g = `g'[_N]
		if `k' != `g' {
			di in red "`value' is unique within `key';"
			di in red /*
			*/ "there are multiple observations with different `value'" /*
			*/ " within `key'."
			exit 9
		}
		preserve
			tempvar g _merge
			tempfile file
			sort `key'
			by `key' : keep if _n == 1
			keep `key' `value'
			sort `key'
			rename `key'  `varlist'
			rename  `value' `generate'
			save `file', replace
		restore
		sort `varlist'
		joinby `varlist' using "`file'", unmatched(master) _merge(`_merge')
		drop `_merge'

	}
end
exit

