export ABOX_VERSION=0.2.1
gsutil cp gs://anthosbox-releases/anthosbox-full-v$ABOX_VERSION.tar.gz .
tar xvzf anthosbox-full-v$ABOX_VERSION.tar.gz
cd anthosbox-full-v$ABOX_VERSION
Export ABOXPATH=`pwd`
cd ..
gsutil cp gs://anthosbox-releases/onlineboutique-v$ABOX_VERSION.tar.gz .
tar xvzf onlineboutique-v$ABOX_VERSION.tar.gz
cd ../onlineboutique-v$ABOX_VERSION
cp -a config-repo/* ../ACM/policy/ #ACM目录是安装ACM时的本地Git目录
git add .
git commit -m 'add online boutique app'
git push
