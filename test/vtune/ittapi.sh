#!/usr/bin/env bash
#  SPDX-License-Identifier: BSD-3-Clause
#  Copyright (C) 2023 Intel Corporation.
#  All rights reserved.
#
testdir=$(readlink -f "$(dirname $0)")
rootdir=$(readlink -f "$testdir/../..")
source "$rootdir/test/common/autotest_common.sh"
source "$rootdir/test/bdev/bdevperf.sh"

function test_run_bdevperf_workload() {
    # set up reference collector environment variables
    export INTEL_LIBITTNOTIFY64=$VTUNE_ITTAPI_DIR/ittnotify_refcol/libittnotify_refcol.so
}

function test_parse_itt_refcol_log() {
    #
}

function cleanup_itt_refcol_log() {
    #
}

run_test "test_run_bdevperf_workload" test_run_bdevperf_workload
run_test "test_parse_itt_refcol_log" test_parse_itt_refcol_log
run_test "cleanup_itt_refcol_log" cleanup_itt_refcol_log
