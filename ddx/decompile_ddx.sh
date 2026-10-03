#!/usr/bin/env bash
# decompile_ddx.sh - Automated decompiler runner for SGI Impact X11 DDX driver

set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

M2C="python3 ${ROOT_DIR}/m2c/m2c.py -t mipsn32 --context ${SCRIPT_DIR}/ctx.c"

if [ $# -eq 0 ] || [ "$1" == "all" ]; then
    echo "[*] Decompiling all DDX modules..."
    for f in "${SCRIPT_DIR}"/asm/*/*.s; do
        mod="$(basename "$(dirname "$f")")"
        out="${SCRIPT_DIR}/decomp/${mod}/${mod}.c"
        echo "[*] Decompiling $f -> $out ..."
        $M2C "$f" > "$out" 2>&1 || true
        echo "[+] Done: $out ($(wc -l < "$out") lines)"
    done
    exit 0
fi

target="$1"
f="${SCRIPT_DIR}/asm/${target}/${target}.s"
if [ ! -f "$f" ]; then
    echo "[-] File not found: $f"
    exit 1
fi

out="${SCRIPT_DIR}/decomp/${target}/${target}.c"
echo "[*] Decompiling $f -> $out ..."
$M2C "$f" > "$out" 2>&1 || true
echo "[+] Done: $out ($(wc -l < "$out") lines)"
