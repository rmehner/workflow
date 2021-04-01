for ruby in ~/.rbenv/versions/*; do
  rbenv uninstall -f ${ruby##*/}
  rbenv install ${ruby##*/}
done
