#!/bin/bash

dir=${1-templates/config}
branch=${2-v0.6.1}

# Download configuration templates for SMART Servers
mkdir $dir
echo Downloading Configuration Templates for SMART Reference Container
wget -nv https://raw.github.com/chb/smart_server/$branch/settings.py.default -O $dir/api_settings.py
wget -nv https://raw.github.com/chb/smart_server/$branch/bootstrap_helpers/application_list.json.default -O $dir/application_list.json
wget -nv https://raw.github.com/chb/smart_server/$branch/bootstrap_helpers/bootstrap_applications.py.default -O $dir/bootstrap_applications.py
wget -nv https://raw.github.com/chb/smart_ui_server/$branch/settings.py.default -O $dir/ui_settings.py
wget -nv https://raw.github.com/chb/smart_sample_apps/$branch/settings.py.default -O $dir/apps_settings.py