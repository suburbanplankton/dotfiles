if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi
export PATH
if [ -d "$HOME/man" ]; then
  MANPATH="$HOME/man:$MANPATH"
fi
export MANPATH
if [ -d "$HOME/info" ]; then
  INFOPATH="$HOME/info:$INFOPATH"
fi
export INFOPATH
if [ -d "$HOME/usr/lib/pkgconfig" ]; then
  PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/usr/lib/pkgconfig"
fi
export PKG_CONFIG_PATH
if [ -d "$HOME/usr/lib/" ]; then
  LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/usr/lib"
fi
export LD_LIBRARY_PATH
if [ -d "$HOME/usr/lib/" ]; then
  LD_RUN_PATH="$LD_RUN_PATH:$HOME/usr/lib"
fi
export LD_RUN_PATH

export DISPLAY=:0.0
