#!/bin/bash

# Define the commands
commands=(
"python velorama/run_modified.py -ds gaston_dynamics_test_mod_q8 -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run77_cerebellum_full_nl-50_flip-false_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_A_mod_q8 -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run78_cerebellum_A_nl-50_flip-false_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_B_mod_q8 -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run79_cerebellum_B_nl-50_flip-false_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_C_mod_q8 -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run80_cerebellum_C_nl-50_flip-false_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds gaston_dynamics_test_mod_q8_flip -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run81_cerebellum_full_nl-50_flip-true_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_A_mod_q8_flip -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run82_cerebellum_A_nl-50_flip-true_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_B_mod_q8_flip -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run83_cerebellum_B_nl-50_flip-true_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
"python velorama/run_modified.py -ds cerebellum_C_mod_q8_flip -dyn dag_precomputed -nl 50 -sd /hpc/home/ps325/projects/velorama/results/run84_cerebellum_C_nl-50_flip-true_schedule-true_decay-0.95 -mi 12000 -lr 0.2"
)

# Execute the commands sequentially
for command in "${commands[@]}"; do
    echo "Running command: $command"
    eval $command
done
