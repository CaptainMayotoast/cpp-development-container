#!/bin/bash

set -e

# https://github.com/oneapi-src/oneTBB
# https://www.intel.com/content/www/us/en/developer/articles/tool/oneapi-standalone-components.html#onetbb

wget -q https://registrationcenter-download.intel.com/akdlm/IRC_NAS/b31f6b79-10aa-4119-a437-48fe2775633b/l_tbb_oneapi_p_2021.12.0.499_offline.sh && \
    chmod +x l_tbb_oneapi_p_2021.12.0.499_offline.sh && \
    bash ./l_tbb_oneapi_p_2021.12.0.499_offline.sh -a -s --eula accept