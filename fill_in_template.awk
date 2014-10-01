# Provides a simple templating system for awk. 
# Input a template file to parse
#    %yy = year
#    %mm = month
#    %dd = day
# Output: the template file with variables substituted

BEGIN {
	# Get the date
	date_cmd = "date +%Y-%m-%d"
	date_cmd | getline date_string
	close(date_cmd)

    num_date_components = split(date_string, date_components, "-")
    year = date_components[1]
    month = date_components[2]
    date = date_components[3]
}

{
	gsub("{%yy}", year)
	gsub("{%mm}", month)
	gsub("{%dd}", date)
	print $0
}