#!/data/data/com.termux/files/usr/bin/bash

echo "=========================================="
echo "       MONITOR DEL SISTEMA ANDROID"
echo "=========================================="

echo ""
echo "[ SISTEMA ]"
echo "Sistema operativo: Android $(getprop ro.build.version.release)"
echo "Kernel: $(uname -r)"
echo "Arquitectura: $(uname -m)"
echo "Fabricante: $(getprop ro.product.manufacturer)"
echo "Modelo: $(getprop ro.product.model)"

echo ""
echo "[ CPU ]"
echo "Núcleos: $(nproc)"
echo "Núcleos activos: $(cat /sys/devices/system/cpu/online)"

echo ""
echo "[ MEMORIA RAM ]"
free -h

echo ""
echo "[ ALMACENAMIENTO ]"
df -h /storage/emulated

echo ""
echo "[ PROCESOS VISIBLES ]"
top -n 1 | head -n 12

echo ""
echo "[ BATERÍA ]"
termux-battery-status

echo ""
echo "[ GPU ]"
echo "Información detallada: restringida por Android/Termux"

echo ""
echo "=========================================="
echo "          FIN DEL MONITOR"
echo "=========================================="
