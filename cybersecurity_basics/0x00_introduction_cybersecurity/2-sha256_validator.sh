#!/bin/bash
sha256sum $1 > $1.sha256
sha256sum -c $1.sha256