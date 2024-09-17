function make_repo(){
    mv output/* debs/ 2>/dev/null
    cd mirror-helper
    ./make-current-mirror.sh
    cd ..
}
make_repo
rsync -rv mirror-helper/dists/ root@43.138.107.128:/home/drtool/dists/
# rsync -rv output/ root@43.138.107.128:/home/termare/dists/debs/