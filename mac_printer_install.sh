#!/bin/sh

# run chmod +x mac_printer_install.sh inside this root folder where the script is located

lpadmin -p Printer_Name -L "Printer location" -E -v lpd://127.0.0.1 -P TOSHIBA_ColorMFP_X7.gz