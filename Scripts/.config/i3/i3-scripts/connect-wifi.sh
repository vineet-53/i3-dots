#!/bin/bash
function ask_user() {
  echo "bssid"
  read bssid
  echo "password"
  read passwd
}
nmcli device wifi
ask_user
nmcli device wifi connect "$bssid" password "$passwd"
echo "connected successfully"
