DUMP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
file1=$DUMP_DIR/file1.list
file2=$DUMP_DIR/file2.list

if cmp -s "$file1" "$file2"; then
    printf 'The result from "%s" file is the same as "%s"\n' "$file1" "$file2"
else
	  diff -u "$file1"  "$file2" > $DUMP_DIR/diff.list
    printf 'The result from "%s" file is different from "%s"\n' "$file1" "$file2"
fi
