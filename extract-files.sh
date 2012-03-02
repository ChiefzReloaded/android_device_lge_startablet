#!/bin/sh

CMD=${LGE_HC_CP_CMD:-adb pull}
SOURCE=${LGE_HC_SOURCE:-/system}

BASE=../../../vendor/lge/startablet/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    ${CMD} "${SOURCE}/$FILE" $BASE/$FILE
done

VENTANA_ICS_MOUNT=${VENTANA_SYSTEM_MOUNT:-/mnt/tmp/}

if [ ! -d "$VENTANA_ICS_MOUNT/lib/egl" ] ; then
    echo "nvidia ICS binaries not found"
    exit 1
fi

while read FILE; do
    DIR=$(dirname ${FILE})
    test -d "${BASE}/${DIR})" || mkdir -p "${BASE}/${DIR}"
    cp "${VENTANA_ICS_MOUNT}/${FILE}" "${BASE}/${FILE}"
done < proprietary-files-ventana.txt

./setup-makefiles.sh
