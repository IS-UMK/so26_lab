#!/bin/bash


echo "Host: $(hostname -f)  ( $(hostname -i) )"
echo "Nazwa dystrybucji i numer wydania: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Architektura systemu: TODO"
echo "Rodzaj i wersja systemu operacyjnego: TODO"
name=$(grep '^model name' /proc/cpuinfo | head -n 1 | cut -d: -f2)
echo "Model procesora: ${name}"
ncpu=$(grep '^model name' /proc/cpuinfo | wc -l)
printf "Liczba procesorów: %d\n" ${ncpu}
LC_ALL=C awk '/^MemTotal/{printf("Pamięć RAM w KiB (GiB): %d (%.4f)\n", $2, $2/2^20)}'  /proc/meminfo




