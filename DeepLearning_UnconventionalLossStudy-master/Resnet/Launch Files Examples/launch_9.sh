for iterations in 1
do
	for lo in 'surrogate_hinge' 'surrogate_hinge_squares' 'surrogate_squares' 
	do
		python3 train_cifar.py -data_dir './data' -save_dir './save' -export_file 'test.csv' -loss $lo -batch_size 128 -max_steps 150000 -num_blocks 3 -learn_rate .001 -load True -load_dir './save'
	done 
done 

