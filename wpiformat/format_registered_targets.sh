
cd $BUILD_WORKSPACE_DIRECTORY

TARGETS=$@
echo "Running spotless on targets "
bazel query "attr(tags, '_wpiformat_apply', $TARGETS)" --ui_event_filters=stdout --noshow_progress > temp_wpiformat.txt

while read p; do
  bazel run $p
done <temp_wpiformat.txt

rm temp_wpiformat.txt
