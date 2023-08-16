for user in `strings "/usr/share/responder/logs/Responder-Session.log" | grep "NTLMv2 Hash" | cut -d ":" -f 4-6 | sort -u -f | awk '{$1=$1};1'`
do
echo "[*] search for: $user";
strings "/usr/share/responder/logs/Responder-Session.log" | grep "NTLMv2 Hash" | grep -i $user | cut -d ":" -f 4-10 |  head -n 1 | awk '{$1=$1};1' >> ntlm-hashes.txt
done