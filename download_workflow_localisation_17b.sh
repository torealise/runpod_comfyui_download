#!/bin/bash
echo '########################################'
echo 'Downloading ComfyUI & components...'
echo '########################################'

set -euxo pipefail

repo_path="/home/runner/ComfyUI"

if [ ! -d "$repo_path" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/comfyanonymous/ComfyUI.git $repo_path
fi

cd $repo_path

git reset --hard HEAD

cd $repo_path/custom_nodes

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-KJNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Manager /home/runner/ComfyUI/custom_nodes/ComfyUI-Manager && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-Manager && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-KJNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/kijai/ComfyUI-KJNodes /home/runner/ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-KJNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/was-node-suite-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/WASasquatch/was-node-suite-comfyui /home/runner/ComfyUI/custom_nodes/was-node-suite-comfyui && \
    cd /home/runner/ComfyUI/custom_nodes/was-node-suite-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/comfyanonymous/ComfyUI /home/runner/ComfyUI/custom_nodes/ComfyUI && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/comfyui-reactor-node" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Gourieff/comfyui-reactor-node /home/runner/ComfyUI/custom_nodes/comfyui-reactor-node && \
    cd /home/runner/ComfyUI/custom_nodes/comfyui-reactor-node && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/EllangoK/ComfyUI-post-processing-nodes /home/runner/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-post-processing-nodes && \
    git reset --hard HEAD
fi

wget https://github.com/tudal/Hakkun-ComfyUI-nodes/raw/main/hakkun_nodes.py -P /home/runner/ComfyUI/custom_nodes/

if [ ! -d "/home/runner/ComfyUI/custom_nodes/comfyui-mixlab-nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/shadowcz007/comfyui-mixlab-nodes /home/runner/ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    cd /home/runner/ComfyUI/custom_nodes/comfyui-mixlab-nodes && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/Comfy_KepListStuff" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/M1kep/Comfy_KepListStuff /home/runner/ComfyUI/custom_nodes/Comfy_KepListStuff && \
    cd /home/runner/ComfyUI/custom_nodes/Comfy_KepListStuff && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/image-resize-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/palant/image-resize-comfyui /home/runner/ComfyUI/custom_nodes/image-resize-comfyui && \
    cd /home/runner/ComfyUI/custom_nodes/image-resize-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes /home/runner/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI_Comfyroll_CustomNodes && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/Fooocus_Nodes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Seedsa/Fooocus_Nodes /home/runner/ComfyUI/custom_nodes/Fooocus_Nodes && \
    cd /home/runner/ComfyUI/custom_nodes/Fooocus_Nodes && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI_essentials" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_essentials /home/runner/ComfyUI/custom_nodes/ComfyUI_essentials && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI_essentials && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/comfy_mtb" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/melMass/comfy_mtb /home/runner/ComfyUI/custom_nodes/comfy_mtb && \
    cd /home/runner/ComfyUI/custom_nodes/comfy_mtb && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/StartHua/Comfyui_segformer_b2_clothes /home/runner/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    cd /home/runner/ComfyUI/custom_nodes/Comfyui_segformer_b2_clothes && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-Impact-Pack" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/ltdrdata/ComfyUI-Impact-Pack /home/runner/ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-Impact-Pack && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/comfyui_controlnet_aux" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Fannovel16/comfyui_controlnet_aux /home/runner/ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    cd /home/runner/ComfyUI/custom_nodes/comfyui_controlnet_aux && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/masquerade-nodes-comfyui" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/BadCafeCode/masquerade-nodes-comfyui /home/runner/ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    cd /home/runner/ComfyUI/custom_nodes/masquerade-nodes-comfyui && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite /home/runner/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-VideoHelperSuite && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-Image-Filters" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/spacepxl/ComfyUI-Image-Filters /home/runner/ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-Image-Filters && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI-Allor" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/Nourepide/ComfyUI-Allor /home/runner/ComfyUI/custom_nodes/ComfyUI-Allor && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI-Allor && \
    git reset --hard HEAD
fi

if [ ! -d "/home/runner/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus" ]; then
    git clone --no-tags --recurse-submodules --shallow-submodules https://github.com/cubiq/ComfyUI_IPAdapter_plus /home/runner/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    cd /home/runner/ComfyUI/custom_nodes/ComfyUI_IPAdapter_plus && \
    git reset --hard HEAD
fi

cd /home/runner/ComfyUI
aria2c --allow-overwrite=false --auto-file-renaming=false --continue=true \
    --max-connection-per-server=5 --input-file=/home/scripts/download_workflow_localisation_17b.txt

touch /home/runner/.download-complete
