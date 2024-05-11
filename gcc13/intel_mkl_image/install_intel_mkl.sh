#!/bin/bash

set -e

# https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl-download.html?operatingsystem=linux&distributions=offline

wget -q https://registrationcenter-download.intel.com/akdlm/IRC_NAS/2f3a5785-1c41-4f65-a2f9-ddf9e0db3ea0/l_onemkl_p_2024.1.0.695_offline.sh && \
    chmod +x l_onemkl_p_2024.1.0.695_offline.sh && \
    bash ./l_onemkl_p_2024.1.0.695_offline.sh -a -s --eula accept