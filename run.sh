# Request interactive shell resource on LRZ AI Cluster:
# srun --pty --container-mounts=./vggsfm/:/workspaces/vggsfm --container-image="./olivertum+vggsfm+latest.sqsh" bash

python video_demo.py shared_camera=True make_reproj_video=True visual_tracks=True 'SCENE_DIR="examples/Thursday, March 20, 2025 5:55:21.359 PM - Walking, Running, Outside"'