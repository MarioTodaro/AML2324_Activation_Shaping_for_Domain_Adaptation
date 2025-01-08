target_domain=${1}
shift

python main.py \
--experiment=domain_adapt \
--experiment_name=domain_adapt/${target_domain}/ \
--dataset_args="{'root': 'data/PACS', 'source_domain': 'art_painting', 'target_domain': '${target_domain}'}" \
--batch_size=128 \
--num_workers=5 \
--grad_accum_steps=1 \
"$@"