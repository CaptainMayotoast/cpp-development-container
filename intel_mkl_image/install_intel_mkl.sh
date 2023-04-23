#!/bin/bash

set -e

wget -q https://registrationcenter-download.intel.com/akdlm/irc_nas/19138/l_onemkl_p_2023.0.0.25398_offline.sh && \
    chmod +x l_onemkl_p_2023.0.0.25398_offline.sh && \
    bash ./l_onemkl_p_2023.0.0.25398_offline.sh -a -s --eula accept