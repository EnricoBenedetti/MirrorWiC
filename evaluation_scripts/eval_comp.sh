file="./comparison_table_data.txt"
echo "results" > $file


echo "cambridgeltl/mirrorwic-bert-base-uncased - XL-WiC" >> $file
bash ./eval.sh xlwic cambridgeltl/mirrorwic-bert-base-uncased 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file
echo "cambridgeltl/mirrorwic-bert-base-uncased - AM2iCo" >> $file
bash ./eval.sh am2ico cambridgeltl/mirrorwic-bert-base-uncased 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file


echo "cl-tohoku/bert-base-japanese-v3 - XL-WiC" >> $file
bash ./eval.sh xlwic cl-tohoku/bert-base-japanese-v3 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file
echo "cl-tohoku/bert-base-japanese-v3 - AM2iCo" >> $file
bash ./eval.sh am2ico cl-tohoku/bert-base-japanese-v3 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file

#bash ./eval.sh xlwic bennexx/mirrorwic-cl-tohoku-bert-base-japanese-v3 0

model_jp_mw="bennexx/mirrorwic-cl-tohoku-bert-base-japanese-v3"
echo "$model_jp_mw - XL-WiC" >> $file
bash ./eval.sh xlwic $model_jp_mw 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file
echo "$model_jp_mw - AM2iCo" >> $file
bash ./eval.sh am2ico $model_jp_mw 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file

model_sentence_jp="sonoisa/sentence-bert-base-ja-mean-tokens-v2"
echo "$model_sentence_jp - XL-WiC" >> $file
bash ./eval.sh xlwic $model_sentence_jp 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file
echo "$model_sentence_jp - AM2iCo" >> $file
bash ./eval.sh am2ico $model_sentence_jp 0 | grep -E "^==WIC RESULTS==|^test auc" >> $file