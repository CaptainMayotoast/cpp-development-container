#!/bin/bash

set -e

# https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl-download.html?operatingsystem=linux&distributions=offline

wget -q https://registrationcenter-download.intel.com/akdlm/IRC_NAS/86d6a4c1-c998-4c6b-9fff-ca004e9f7455/l_onemkl_p_2024.0.0.49673_offline.sh && \
    chmod +x l_onemkl_p_2024.0.0.49673_offline.sh && \
    bash ./l_onemkl_p_2024.0.0.49673_offline.sh -a -s --eula accept