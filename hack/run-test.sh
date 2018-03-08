#!/usr/bin/env bash

set -x

GAIA=gaia-0.5.0
BASE_DIR=$(pwd)

${GAIA} node start --home=${BASE_DIR}/sentry-a &> sentry-a.log &
sleep 1
${GAIA} node start --home=${BASE_DIR}/sentry-b &> sentry-b.log &
sleep 1

sleep 10

${GAIA} node start --home=${BASE_DIR}/validator-a &> validator-a.log &
sleep 1
${GAIA} node start --home=${BASE_DIR}/validator-b &> validator-b.log &
sleep 1

multitail {sentry,validator}-{a,b}.log

