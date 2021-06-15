#!/usr/bin/env bash
MISC_SRC_FILES="abc def abc.def xyz"
element_in_list() {
    local find_element=$1
    local elements_base=("${!2}")
    local found="false"
    for current in ${elements_base[@]}; do
        if [ "$current" = "$find_element" ];then
            found="true"
            break
        fi
    done
    echo "$found"
}

element="abc.def"
result="$(element_in_list "$element" MISC_SRC_FILES[@])"
echo "result is: $result"
file_exists=""
retain_src_file_perm="true"
if [[ -z "$file_exists" && "$retain_src_file_perm" = "false" ]]; then
    # Assume files that are new should be user read/writeable for now
    echo "TRUE"
else
    echo "FALSE"
fi

