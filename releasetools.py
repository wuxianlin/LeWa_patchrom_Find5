import common
import edify_generator

def AddAssertions(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and ("ro.product.device" in edify.script[i] or "ro.build.product" in edify.script[i]):
            edify.script[i] = edify.script[i].replace(");", ' ||\n       getprop("ro.product.device") == "find5" ||\n       getprop("ro.build.product") == "find5" ||\n       getprop("ro.product.device") == "FIND5" ||\n       getprop("ro.build.product") == "FIND5");')
            return

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
	    
