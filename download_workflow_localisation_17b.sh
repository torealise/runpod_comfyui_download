#!/bin/bash
echo '########################################'
echo 'Downloading ComfyUI & components...'
echo '########################################'

set -euxo pipefail

cd ~/ComfyUI/custom_nodes

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Manager" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Manager /ComfyUI/custom_nodes/ComfyUI-Manager && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-Manager && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/was-node-suite-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/WASasquatch/was-node-suite-comfyui /ComfyUI/custom_nodes/was-node-suite-comfyui && \
    cd ~/ComfyUI/custom_nodes/was-node-suite-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-KJNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/kijai/ComfyUI-KJNodes /ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/comfyui-reactor-node" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Gourieff/comfyui-reactor-node /ComfyUI/custom_nodes/comfyui-reactor-node && \
    cd ~/ComfyUI/custom_nodes/comfyui-reactor-node && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/EllangoK/ComfyUI-post-processing-nodes /ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    git reset --hard HEAD
fi

wget https://github.com/tudal/Hakkun-ComfyUI-nodes/raw/main/hakkun_nodes.py -P ~/ComfyUI/custom_nodes/

if [ ! -d "/ComfyUI/custom_nodes/comfyui-mixlab-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/shadowcz007/comfyui-mixlab-nodes /ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    cd ~/ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/Comfy_KepListStuff" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/M1kep/Comfy_KepListStuff /ComfyUI/custom_nodes/Comfy_KepListStuff && \
    cd ~/ComfyUI/custom_nodes/Comfy_KepListStuff && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/image-resize-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/palant/image-resize-comfyui /ComfyUI/custom_nodes/image-resize-comfyui && \
    cd ~/ComfyUI/custom_nodes/image-resize-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes /ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    cd ~/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI_essentials" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_essentials /ComfyUI/custom_nodes/ComfyUI_essentials && \
    cd ~/ComfyUI/custom_nodes/ComfyUI_essentials && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/comfy_mtb" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/melMass/comfy_mtb /ComfyUI/custom_nodes/comfy_mtb && \
    cd ~/ComfyUI/custom_nodes/comfy_mtb && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/StartHua/Comfyui_segformer_b2_clothes /ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    cd ~/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Impact-Pack" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Impact-Pack /ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/comfyui_controlnet_aux" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Fannovel16/comfyui_controlnet_aux /ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    cd ~/ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/masquerade-nodes-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/BadCafeCode/masquerade-nodes-comfyui /ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    cd ~/ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite /ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Image-Filters" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/spacepxl/ComfyUI-Image-Filters /ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI-Allor" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Nourepide/ComfyUI-Allor /ComfyUI/custom_nodes/ComfyUI-Allor && \
    cd ~/ComfyUI/custom_nodes/ComfyUI-Allor && \
    git reset --hard HEAD
fi

if [ ! -d "/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_IPAdapter_plus /ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    cd ~/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    git reset --hard HEAD
fi

cd /
aria2c --allow-overwrite=false --auto-file-renaming=false --continue=true \
    --max-connection-per-server=5 --input-file=download_workflow_localisation_17b.txt

touch ./.download-complete
