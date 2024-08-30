

  create or replace view `dbt-learning-434102`.`mrh_dataset`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `dbt-learning-434102`.`mrh_dataset`.`my_first_dbt_model`
where id = 1;

