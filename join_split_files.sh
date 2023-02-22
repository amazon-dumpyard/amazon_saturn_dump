#!/bin/bash

cat system/framework/arm/boot.oat.* 2>/dev/null >> system/framework/arm/boot.oat
rm -f system/framework/arm/boot.oat.* 2>/dev/null
