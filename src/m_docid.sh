#!/bin/sh
echo | tai64 | sed 's/@/SAD/' | sed 's/ *//g' | tr [:lower:] [:upper:]
