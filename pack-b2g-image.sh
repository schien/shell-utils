#!/bin/bash

zip -q $1 out/target/product/unagi/*.img flash.sh load-config.sh .config .userconfig
