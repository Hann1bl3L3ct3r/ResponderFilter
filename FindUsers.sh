strings "/usr/share/responder/logs/Responder-Session.log" | grep "NTLMv2 Hash" | cut -d ":" -f 4-6 | sort -u -f | awk '{$1=$1};1'
