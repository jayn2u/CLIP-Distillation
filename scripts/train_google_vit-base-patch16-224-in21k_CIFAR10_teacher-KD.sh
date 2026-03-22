#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT"
mkdir -p "$ROOT/logs" "$ROOT/checkpoints"
uv run python train.py \
    --dataset-name CIFAR10 \
    --teacher-model google/vit-base-patch16-224-in21k \
    --log-folder logs/train_google_vit-base-patch16-224-in21k_CIFAR10_teacher-KD \
    --ckpt-save-name checkpoints/train_google_vit-base-patch16-224-in21k_CIFAR10_teacher-KD.pt \
    --train-type teacher-KD
