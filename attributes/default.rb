default['webgrind']['install_path'] = "/var/www/webgrind"

default['webgrind']['webserver'] = 'apache2'

default['webgrind']['config']['check_version'] = "false"
default['webgrind']['config']['hide_webgrind_profiles'] = "true"
default['webgrind']['config']['storage_dir'] = ""
default['webgrind']['config']['profiler_dir'] = "/tmp"
default['webgrind']['config']['preprocessed_suffix'] = ".webgrind"
default['webgrind']['config']['default_timezone'] = "UTC"
default['webgrind']['config']['date_format'] = "Y-m-d H:i:s"
default['webgrind']['config']['default_costformat'] = "percent"
default['webgrind']['config']['default_function_percentage'] = "90"
default['webgrind']['config']['default_hideInternal_functions'] = "false"
default['webgrind']['config']['python_executable'] = "/usr/bin/python"
default['webgrind']['config']['dot_executable'] = "/usr/local/bin/dot"
default['webgrind']['config']['file_url_format'] = "index.php?op=fileviewer&file=%1$s#line%2$d"
default['webgrind']['config']['trace_file_list_format'] = "%i (%f) [%s]"
