#!/bin/bash
#
# $1: dir for miui overlay framework-res
# $2: dir for target framework-res
#

if [ `basename $1` = "drawable-hdpi" ];then
	restype=`basename $1`
	for file in `find "$1"`
	do
		newfile=`basename $file`
		newfile1=`echo $newfile | sed -e "s/^/zz_/"`
		targetfile="$2/$restype/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
        	        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi

		newfile1=`echo $newfile | sed -e "s/^/zz_moto_/"`
		targetfile="$2/$restype/$newfile1"
        	if [ -f $targetfile ]
        	then
        	        mkdir -p `dirname $targetfile`
    		        echo "add miui res: $file"
			echo "           >> $targetfile"
        	        cp $file $targetfile
	       	fi
	done
fi

