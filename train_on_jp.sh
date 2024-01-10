pip install nagisa

python get_mirrorwic_traindata.py \
   --data ./train_data/ja_wiki.txt \
   --lg ja \
   --random_er 10

cd train_scripts
# substitute the model name in mirror_wic.sh!!!
bash ./mirror_wic.sh 5,6 ../train_data/ja_wiki.txt.mirror.wic.re10 cl-tohoku/bert-base-japanese-v3 0.4
cd ..
