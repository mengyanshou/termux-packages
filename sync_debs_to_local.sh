rsync -rv root@43.138.107.128:/home/drtool/dists/ dist_dr/
find dist_dr -type f -name "*.deb" -exec mv {} debs/ \;