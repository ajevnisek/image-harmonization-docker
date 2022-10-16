git clone https://github.com/ajevnisek/semantic-segmentation-pytorch.git
cd /semantic-segmentation-pytorch

python3 train.py --gpus 0 --cfg config/HCOCO-hrnetv2.yaml
python3 eval_multipro.py --gpus 0 --cfg config/HCOCO-hrnetv2.yaml  > /storage/jevnisek/ImageHarmonizationResults/ckpt/HCOCO-hrnetv2-c1/eval_log.txt
# python finalize_script.py
