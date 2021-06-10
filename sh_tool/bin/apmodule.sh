#!/bin/bash
#
# @brief   Generating Apache Module Project
# @version ver.1.0
# @date    Wed Feb 22 09:15:40 CET 2017
# @company None, free software to use 2017
# @author  Vladimir Roncevic <elektron.ronca@gmail.com>
#
UTIL_ROOT=/root/scripts
UTIL_VERSION=ver.1.0
UTIL=${UTIL_ROOT}/sh_util/${UTIL_VERSION}
UTIL_LOG=${UTIL}/log

.    ${UTIL}/bin/devel.sh
.    ${UTIL}/bin/usage.sh
.    ${UTIL}/bin/check_root.sh
.    ${UTIL}/bin/check_tool.sh
.    ${UTIL}/bin/logging.sh
.    ${UTIL}/bin/send_mail.sh
.    ${UTIL}/bin/load_conf.sh
.    ${UTIL}/bin/load_util_conf.sh
.    ${UTIL}/bin/progress_bar.sh

APMODULE_TOOL=apmodule
APMODULE_VERSION=ver.1.0
APMODULE_HOME=${UTIL_ROOT}/${APMODULE_TOOL}/${APMODULE_VERSION}
APMODULE_CFG=${APMODULE_HOME}/conf/${APMODULE_TOOL}.cfg
APMODULE_UTIL_CFG=${APMODULE_HOME}/conf/${APMODULE_TOOL}_util.cfg
APMODULE_LOG=${APMODULE_HOME}/log

declare -A APMODULE_USAGE=(
    [USAGE_TOOL]="${APMODULE_TOOL}"
    [USAGE_ARG1]="[Project Name] Project name (apache module)"
    [USAGE_EX_PRE]="# Example creating module rcp"
    [USAGE_EX]="${APMODULE_TOOL} rcp"
)

declare -A APMODULE_LOGGING=(
    [LOG_TOOL]="${APMODULE_TOOL}"
    [LOG_FLAG]="info"
    [LOG_PATH]="${APMODULE_LOG}"
    [LOG_MSGE]="None"
)

declare -A PB_STRUCTURE=(
    [BW]=50
    [MP]=100
    [SLEEP]=0.01
)

TOOL_DEBUG="false"
TOOL_LOG="false"
TOOL_NOTIFY="false"

#
# @brief  Generating Apache Module Project
# @param  Value required project name
# @retval Function __apmodule exit with integer value
#            0   - tool finished with success operation
#            128 - missing argument(s) from cli
#            129 - failed to load tool script configuration from files
#            130 - missing external tool
#
#
# @usage
# @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
#
# PNAME="rcp"
# __apmodule "${PNAME}"
#
function __apmodule {
    local PNAME=$1
    if [ -n "${PNAME}" ]; then
        local FUNC=${FUNCNAME[0]} MSG="None"
        local STATUS_CONF STATUS_CONF_UTIL STATUS
        MSG="Loading basic and util configuration!"
        info_debug_message "$MSG" "$FUNC" "$APMODULE_TOOL"
        progress_bar PB_STRUCTURE
        declare -A config_apmodule=()
        load_conf "$APMODULE_CFG" config_apmodule
        STATUS_CONF=$?
        declare -A config_apmodule_util=()
        load_util_conf "$APMODULE_UTIL_CFG" config_apmodule_util
        STATUS_CONF_UTIL=$?
        declare -A STATUS_STRUCTURE=(
            [1]=$STATUS_CONF [2]=$STATUS_CONF_UTIL
        )
        check_status STATUS_STRUCTURE
        STATUS=$?
        if [ $STATUS -eq $NOT_SUCCESS ]; then
            MSG="Force exit!"
            info_debug_message_end "$MSG" "$FUNC" "$APMODULE_TOOL"
            exit 129
        fi
        TOOL_DEBUG=${config_apmodule[DEBUGGING]}
        TOOL_LOG=${config_apmodule[LOGGING]}
        TOOL_NOTIFY=${config_apmodule[EMAILING]}
        APXS=${config_apmodule_util[APXS]}
        check_tool "${APXS}"
        STATUS=$?
        if [ $STATUS -eq $NOT_SUCCESS ]; then
            MSG="Force exit!"
            info_debug_message_end "$MSG" "$FUNC" "$APMODULE_TOOL"
            exit 130
        fi
        MSG="Generating Apache Module"
        info_debug_message "$MSG" "$FUNC" "$APMODULE_TOOL"
        eval "${APXS} -g -n ${PNAME}"
        local USERID=${config_apmodule_util[USERID]}
        local GROUPID=${config_apmodule_util[GROUPID]}
        MSG="Set owner!"
        info_debug_message "$MSG" "$FUNC" "$APMODULE_TOOL"
        eval "chown -R ${USRID}.${GRPID} ${PNAME}/"
        MSG="Set permission!"
        info_debug_message "$MSG" "$FUNC" "$APMODULE_TOOL"
        eval "chmod -R 700 ${PNAME}/"
        info_debug_message_end "Done" "$FUNC" "$APMODULE_TOOL"
        exit 0
    fi
    usage APMODULE_USAGE
    exit 128
}

#
# @brief   Main entry point of script tool
# @param   Value required project name
# @exitval Script tool apmodule exit with integer value
#            0   - tool finished with success operation
#            127 - run tool script as root user from cli
#            128 - missing argument(s) from cli
#            129 - failed to load tool script configuration from files
#            130 - missing external tool
#
printf "\n%s\n%s\n\n" "${APMODULE_TOOL} ${APMODULE_VERSION}" "`date`"
check_root
STATUS=$?
if [ $STATUS -eq $SUCCESS ]; then
    __apmodule $1
fi

exit 127

