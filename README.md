awk_template
============

A simple templating system built on awk, separated out because it has use across my projects.

Basic usage
-----------
```sh
awk -f fill_in_template.awk {template_file} 
```

The above will output the lines as-is from the template file, with these modifications:

  * {%yy} will get replaced with the current four-digit year.
  * {%mm} will get replaced with the current two-digit month.
  * {%dd} will get replaced with the current two-digit date.

These output lines can be appended to other files, run through other shell scripts, and so forth.
  
  
