#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p "$ROOT/logs" "$ROOT/checkpoints"
uv run python train.py \
    --dataset-name CIFAR100 \
    --teacher-model google/vit-base-patch32-224-in21k \
    --log-folder logs/train_google_vit-base-patch32-224-in21k_CIFAR100_embed-KD \
    --ckpt-save-name checkpoints/train_google_vit-base-patch32-224-in21k_CIFAR100_embed-KD.pt \
    --train-type embed-KD
