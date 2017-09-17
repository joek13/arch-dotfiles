#!/bin/bash
HOSTNAME=$(</etc/hostname)
CLEAR='\033[0m'
BLUE='\033[0;34m'
YELLOW='\e[93m'
BOLD='\e[1m'
INDENT="     "
FIRST="${INDENT}${YELLOW}${BOLD}"
SECOND="${CLEAR}${BOLD}"
echo -ne ${BLUE}
figlet -tpf slant $HOSTNAME
echo
echo -e "${FIRST}OS: ${SECOND}Arch Linux"
echo -e "${FIRST}Shell: ${SECOND}$(basename ${SHELL})"
echo -e "${FIRST}Uptime: ${SECOND}$(uptime -p | sed 's/up //')"

SILLY_EXPRESSIONS=("${FIRST}Flux Capacitor: ${SECOND}Uncharged"
    "${FIRST}Horses: ${SECOND}Held"
    "${FIRST}Military-Grade Encryption: ${SECOND}Compromised"
    "${FIRST}MMR: ${SECOND}2k"
    "${FIRST}Inferior Distro: ${SECOND}Ubuntu"
    "${FIRST}Type-Safe Language: ${SECOND}Rust"
)
RANDOM=$$$(date +%s)
echo -e "${SILLY_EXPRESSIONS[$RANDOM % ${#SILLY_EXPRESSIONS[@]}]}"
