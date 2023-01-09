all: eleven ten nine push

eleven:
	docker build -t amitie10g/miner:latest -t amitie10g/miner:11.8.0-cudnn8 -t amitie10g/miner:11.8.0-cudnn8-ubuntu22.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.8.0-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.8.0-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.7.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.7.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.7.1-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.6.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.6.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.6.2-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.5.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.5.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.5.2-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.4.3-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.4.3-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.4.3-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.3.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.3.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.3.1-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.2.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.2.2-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.2.2-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.1.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.1.1-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.1.1-cudnn8-ubuntu18.04 .

	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.0.3-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=20.04 -t amitie10g/miner:11.0.3-cudnn8-ubuntu20.04 .
	docker build --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:11.0.3-cudnn8-ubuntu18.04 .

ten:
	docker build --build-arg CUDA_VERSION=10.2-cudnn8 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:10.2-cudnn8-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=10.2-cudnn8 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:10.2-cudnn8-ubuntu16.04 .

	docker build --build-arg CUDA_VERSION=10.2-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:10.2-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=10.2-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:10.2-cudnn7-ubuntu16.04 .

	docker build --build-arg CUDA_VERSION=10.1-cudnn8 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:10.1-cudnn8-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=10.1-cudnn8 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:10.1-cudnn8-ubuntu16.04 .

	docker build --build-arg CUDA_VERSION=10.1-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:10.1-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=10.1-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:10.1-cudnn7-ubuntu16.04 .
	
	docker build --build-arg CUDA_VERSION=10.0-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:10.0-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=10.0-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:10.0-cudnn7-ubuntu16.04 .

nine:
	docker build --build-arg CUDA_VERSION=9.2-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:9.2-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=9.2-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:9.2-cudnn7-ubuntu16.04 .
	
	docker build --build-arg CUDA_VERSION=9.1-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:9.1-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=9.1-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:9.1-cudnn7-ubuntu16.04 .
	
	docker build --build-arg CUDA_VERSION=9.0-cudnn7 --build-arg UBUNTU_VERSION=18.04 -t amitie10g/miner:9.0-cudnn7-ubuntu18.04 .
	docker build --build-arg CUDA_VERSION=9.0-cudnn7 --build-arg UBUNTU_VERSION=16.04 -t amitie10g/miner:9.0-cudnn7-ubuntu16.04 .	

push:
	docker push --all-tags amitie10g/miner
