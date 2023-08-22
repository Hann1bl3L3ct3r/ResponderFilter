strings "/usr/share/responder/logs/Responder-Session.log" | grep -e "NTLMv2 Hash" -e "NTLMv2-SSP Hash" | cut -d ":" -f 4-6 | sort -u -f | awk '{$1=$1};1'
