#!/bin/bash
echo '########################################'
echo 'Downloading ComfyUI & components...'
echo '########################################'

set -euxo pipefail

repo_path="/workspace/ComfyUI"

if [ ! -d "$repo_path" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/comfyanonymous/ComfyUI.git $repo_path
fi

cd $repo_path

git reset --hard HEAD

cd $repo_path/custom_nodes

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Manager /workspace/ComfyUI/custom_nodes/ComfyUI-Manager && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-Manager && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/kijai/ComfyUI-KJNodes /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/was-node-suite-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/WASasquatch/was-node-suite-comfyui /workspace/ComfyUI/custom_nodes/was-node-suite-comfyui && \
    cd /workspace/ComfyUI/custom_nodes/was-node-suite-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/comfyanonymous/ComfyUI /workspace/ComfyUI/custom_nodes/ComfyUI && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/comfyui-reactor-node" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Gourieff/comfyui-reactor-node /workspace/ComfyUI/custom_nodes/comfyui-reactor-node && \
    cd /workspace/ComfyUI/custom_nodes/comfyui-reactor-node && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/EllangoK/ComfyUI-post-processing-nodes /workspace/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    git reset --hard HEAD
fi

wget https://github.com/tudal/Hakkun-ComfyUI-nodes/raw/main/hakkun_nodes.py -P /workspace/ComfyUI/custom_nodes/

if [ ! -d "/workspace/ComfyUI/custom_nodes/comfyui-mixlab-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/shadowcz007/comfyui-mixlab-nodes /workspace/ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    cd /workspace/ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/Comfy_KepListStuff" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/M1kep/Comfy_KepListStuff /workspace/ComfyUI/custom_nodes/Comfy_KepListStuff && \
    cd /workspace/ComfyUI/custom_nodes/Comfy_KepListStuff && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/image-resize-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/palant/image-resize-comfyui /workspace/ComfyUI/custom_nodes/image-resize-comfyui && \
    cd /workspace/ComfyUI/custom_nodes/image-resize-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes /workspace/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/Fooocus_Nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Seedsa/Fooocus_Nodes /workspace/ComfyUI/custom_nodes/Fooocus_Nodes && \
    cd /workspace/ComfyUI/custom_nodes/Fooocus_Nodes && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI_essentials" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_essentials /workspace/ComfyUI/custom_nodes/ComfyUI_essentials && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI_essentials && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/comfy_mtb" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/melMass/comfy_mtb /workspace/ComfyUI/custom_nodes/comfy_mtb && \
    cd /workspace/ComfyUI/custom_nodes/comfy_mtb && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/StartHua/Comfyui_segformer_b2_clothes /workspace/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    cd /workspace/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Impact-Pack /workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Fannovel16/comfyui_controlnet_aux /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    cd /workspace/ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/masquerade-nodes-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/BadCafeCode/masquerade-nodes-comfyui /workspace/ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    cd /workspace/ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite /workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-Image-Filters" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/spacepxl/ComfyUI-Image-Filters /workspace/ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI-Allor" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Nourepide/ComfyUI-Allor /workspace/ComfyUI/custom_nodes/ComfyUI-Allor && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI-Allor && \
    git reset --hard HEAD
fi

if [ ! -d "/workspace/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_IPAdapter_plus /workspace/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    cd /workspace/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    git reset --hard HEAD
fi

cd /workspace/ComfyUI
aria2c --allow-overwrite=false --auto-file-renaming=false --continue=true \
    --max-connection-per-server=5 --input-file=/home/scripts/download_workflow_localisation_17b.txt

touch /home/runner/.download-complete
