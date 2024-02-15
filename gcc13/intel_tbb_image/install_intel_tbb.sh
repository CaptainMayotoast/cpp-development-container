#!/bin/bash

set -e

# https://github.com/oneapi-src/oneTBB
# https://www.intel.com/content/www/us/en/developer/articles/tool/oneapi-standalone-components.html#onetbb

wget -q https://registrationcenter-download.intel.com/akdlm/IRC_NAS/af3ad519-4c87-4534-87cb-5c7bda12754e/l_tbb_oneapi_p_2021.11.0.49527_offline.sh && \
    chmod +x l_tbb_oneapi_p_2021.11.0.49527_offline.sh && \
    bash ./l_tbb_oneapi_p_2021.11.0.49527_offline.sh -a -s --eula accept