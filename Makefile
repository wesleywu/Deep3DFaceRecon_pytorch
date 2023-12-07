autodl:
	cd /root/Deep3DFaceRecon_pytorch
	mkdir checkpoints
	cd checkpoints
	ln -s /root/autodl-fs/face_recon_20230425 face_recon_20230425
	ln -s /root/autodl-fs/face_recon_feat0.2_augment face_recon_feat0.2_augment
	cd ../BFM
	ln -s /root/autodl-fs/01_MorphableModel.mat 01_MorphableModel.mat
	ln -s /root/autodl-fs/Exp_Pca.bin Exp_Pca.bin
	cd ..
	apt-get update && apt-get install ninja-build

run:
	python test.py --name=face_recon_feat0.2_augment --epoch=20 --img_folder=./datasets/examples --use_opengl=False