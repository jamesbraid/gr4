#!/usr/bin/env bash
# irisgl/decompile_irisgl.sh
# Automated decompilation runner for SGI IrisGL (igloo) using m2c.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
M2C="python3 ${ROOT_DIR}/m2c/m2c.py --target mips-ido-c --context ${SCRIPT_DIR}/ctx.c"

CATEGORIES=(
    "igloo"
    "graphics"
    "glws"
    "texture"
    "light"
    "curve"
    "xform"
    "object"
    "dgl"
    "stubs"
)

if [ -z "$1" ]; then
    echo "Usage: $0 <category | module_name | all | --func <func_name>>"
    echo "Categories: ${CATEGORIES[*]}"
    exit 1
fi

decompile_file() {
    local asm_file="$1"
    local rel_path="${asm_file#$SCRIPT_DIR/asm/}"
    local out_c="$SCRIPT_DIR/decomp/${rel_path%.s}.c"
    local out_dir="$(dirname "$out_c")"
    mkdir -p "$out_dir"

    echo "[*] Decompiling $rel_path -> $out_c..."
    if $M2C "$asm_file" > "$out_c" 2>&1; then
        echo "[+] Done: $out_c ($(wc -l < "$out_c") lines)"
    else
        echo "[-] Failed: $asm_file"
    fi
}

if [ "$1" == "--func" ]; then
    func_name="$2"
    echo "[*] Searching for function $func_name across assembly files..."
    asm_file=$(grep -l "\.ent $func_name" "${SCRIPT_DIR}/asm"/*/*.s | head -n 1)
    if [ -z "$asm_file" ]; then
        echo "[-] Function $func_name not found in ${SCRIPT_DIR}/asm/*/*.s"
        exit 1
    fi
    echo "[*] Found in $asm_file. Decompiling..."
    $M2C -f "$func_name" "$asm_file"
    exit 0
fi

if [ "$1" == "all" ]; then
    echo "[*] Decompiling all IrisGL / Igloo modules..."
    for cat in "${CATEGORIES[@]}"; do
        for f in "${SCRIPT_DIR}"/asm/"$cat"/*.s; do
            [ -f "$f" ] && decompile_file "$f"
        done
    done
    exit 0
fi

# Check if argument is a category
for cat in "${CATEGORIES[@]}"; do
    if [ "$1" == "$cat" ]; then
        echo "[*] Decompiling category $cat..."
        for f in "${SCRIPT_DIR}"/asm/"$cat"/*.s; do
            [ -f "$f" ] && decompile_file "$f"
        done
        exit 0
    fi
done

# Search by module basename
target="$1"
target="${target%.c}"
target="${target%.s}"
matches=$(find "${SCRIPT_DIR}/asm" -name "${target}.s")
if [ -z "$matches" ]; then
    echo "[-] Module ${target}.s not found under ${SCRIPT_DIR}/asm/"
    exit 1
fi

for f in $matches; do
    decompile_file "$f"
done
