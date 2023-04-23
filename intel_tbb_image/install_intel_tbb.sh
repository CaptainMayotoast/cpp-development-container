#!/bin/bash

set -e

wget -q https://registrationcenter-download.intel.com/akdlm/irc_nas/19143/l_tbb_oneapi_p_2021.8.0.25334_offline.sh && \
    chmod +x l_tbb_oneapi_p_2021.8.0.25334_offline.sh && \
    bash ./l_tbb_oneapi_p_2021.8.0.25334_offline.sh -a -s --eula accept