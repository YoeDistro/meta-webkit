FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "${@bb.utils.contains_any('LAYERSERIES_CORENAMES', \
    'gatesgarth hardknott honister', \
    'file://0001-gallium-dri-Make-YUV-formats-we-re-going-to-emulate-.patch', \
    '', d)}"
