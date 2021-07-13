#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2/source/sistema_completo_x.v || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/opensta.sh  /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
/usr/lib/qflow/scripts/vesta.sh -a /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/router.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/opensta.sh  -d /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a -d /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/migrate.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/drc.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/lvs.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/gdsii.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/cleanup.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
# /usr/lib/qflow/scripts/display.sh /mnt/d/Universidad/UCR/I-2021/Microelectronica/Proyecto2/Extra/Desempeño/Proyecto_parte_2 sistemacompletodes || exit 1
