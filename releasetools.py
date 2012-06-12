import common
import edify_generator

def AddAssertions(info):
    info.script.AppendExtra('set_perm_recursive(0, 2000, 06755, 06755, "/system/xbin");');
    edify = info.script
    for i in xrange(len(edify.script)):
        if "assert" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("assert", "ui_print")
        elif "unmount(\"/system\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("unmount(\"/system\");", "mount(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p20\", \"/system\");")
        elif "ui_print(\"Update Boot image...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Update Boot image...\");", "")
        elif "format" in edify.script[i] and "/dev/block/mmcblk1p20" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("format(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p20\", \"0\");", 'delete_recursive("/system/app", "/system/bin", "/system/etc", "/system/fonts", "/system/framework", "/system/lib", "/system/media", "/system/tts", "/system/usr", "/system/vendor", "/system/xbin","/system/build.prop", "/system/default.prop","/system/multiconfig","/system/lost+found","recovery-from-boot.p","0");')
    return 

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
