# conda create -n reward_server python=3.8.10 -y
# Installing dependencies
pip install torch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 --index-url https://download.pytorch.org/whl/cu121
pip install networkx==2.8.8
pip install gunicorn numpy opencv-python flask
pip install open-clip-torch==2.26.1
pip install clip-benchmark
pip install -U openmim
pip install einops
python -m pip install lightning
pip install diffusers transformers
pip install tomli
pip install platformdirs
pip install --upgrade setuptools # (You need to have the latest version)

# mmengine and mmcv dependency installation (Should be done after pip installations)
mim install mmengine mmcv-full==1.7.2

# mmdet installation
git clone https://github.com/open-mmlab/mmdetection.git
cd mmdetection; git checkout 2.x
pip install -v -e .