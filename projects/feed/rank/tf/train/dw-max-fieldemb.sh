model=WideDeep
python ./train.py \
    --field_emb=1 \
    --pooling=max \
    --dense_activation=relu \
    --model=$model \
    --num_epochs=2 \
    --eager=0 \
    --valid_interval_epochs=0.1 \
    --train_input=../input/train \
    --valid_input=../input/valid \
    --model_dir=../input/model/$model.dw.max.fieldemb \
    --batch_size=512 \
    --max_feat_len=100 \
    --optimizer=bert \
    --min_learning_rate=1e-6 \
    --warmup_steps=1000 \
    --learning_rate=0.001 \
    --feat_file_path=../input/feature_index \
    --field_file_path=../input/feat_fields.old
