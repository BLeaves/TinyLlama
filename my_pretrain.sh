export PYTHONPATH=$PYTHONPATH:/mnt/workspace/yxye/TinyLlama
export SETUPTOOLS_USE_DISTUTILS='local'

export DATANAME='logic500M'
export ITERNUM=1

export DATAPATH='/nas/shared/GAIR/yxye/'$DATANAME
export MODELPATH='../litgpt/checkpoints/TinyLlama/TinyLlama-1.1B-intermediate-step-1431k-3T'
export TOKENIZE_OUTDIR='tokenized_data'

#### Tokenize the data ####

python scripts/prepare_starcoder.py \
    --source_path $DATAPATH \
    --tokenizer_path $MODELPATH \
    --destination_path $OUTDIR \
    --split train \
    --percentage 1.0
    