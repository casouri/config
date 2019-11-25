#!/bin/bash
printf "📮 %s" $(/usr/local/bin/notmuch count tag:unread)
