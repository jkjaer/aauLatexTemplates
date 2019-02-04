#!/bin/bash

echo "[Starting installation]"

#detect OS
os_type=$(uname -s)

echo "Detecting OS..."

#place folders based on OS
if [ "$os_type" == "Darwin" ]; then
    install_folder=~/Library/texmf
    echo "Detected Mac OS X"
elif [ "$os_type" == "Linux" ]; then
    install_folder=~/texmf
    echo "Detected Linux"
else
    echo "Could not detect OS type... Exciting"
    exit
fi


#make folders - sty
mkdir -p $install_folder/tex/latex/beamer/themes/{color,inner,outer,theme}

#make folders - for graphics
mkdir -p $install_folder/tex/generic/images

#copy .sty files to coresponding folders
for beamer_temp in Aalborg AAUsidebar AAUsimple; do
    beamer_temp_lower=$(echo "$beamer_temp" | awk '{print tolower($0)}')
    cp aauBeamer/$beamer_temp_lower/beamercolortheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/color/
    cp aauBeamer/$beamer_temp_lower/beamerinnertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/theme/
    cp aauBeamer/$beamer_temp_lower/beameroutertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/outer/
    cp aauBeamer/$beamer_temp_lower/beamertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/theme/
done

#copy graphics if on Linux and print Installation Done
if [ "$os_type" == "Linux" ]; then
    cp -R aauBeamer/aalborg/AAUgraphics/ $install_folder/tex/generic/images/
    cp -R aauPoster/AAUgraphics/ $install_folder/tex/generic/images/
    cp -R aauReportTemplate/AAUgraphics/ $install_folder/tex/generic/images/
    echo "sty and graphics files are no longer required to be in the same directory as your LaTeX files, but are installed globally."
else
    echo "sty files are no longer required to be in the same directory as your project, but are installed globally."
    echo "NOTE: Unlike Linux graphics files are STILL required to be in the same directory as your project"
fi

echo "[Installation done]"


