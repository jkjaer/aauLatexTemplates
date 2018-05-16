#!/bin/bash

#variables
install_folder=~/texmf

echo "[Starting installation]"

#make folders - sty
mkdir -p $install_folder/tex/latex/beamer/themes/{color,inner,outer,theme}

#make folders - for graphics
mkdir -p $install_folder/tex/generic/images

#copy .sty files to coresponding folders
for beamer_temp in Aalborg AAUsidebar AAUsimple; do
    beamer_temp_lower="${beamer_temp,,}"
    cp aauBeamer/$beamer_temp_lower/beamercolortheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/color/
    cp aauBeamer/$beamer_temp_lower/beamerinnertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/theme/
    cp aauBeamer/$beamer_temp_lower/beameroutertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/outer/
    cp aauBeamer/$beamer_temp_lower/beamertheme$beamer_temp.sty $install_folder/tex/latex/beamer/themes/theme/
done

#copy graphics 
cp -R aauBeamer/aalborg/AAUgraphics/ $install_folder/tex/generic/images/

echo "[Installation done]"
