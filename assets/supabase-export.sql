-- Trial user export -> pipeline.csv (adjust table/column names to your schema)
-- Run in Supabase SQL editor, export result as CSV, then tell Claude Code:
-- "merge this export into pipeline/pipeline.csv as segment=TRIAL"
select
  coalesce(u.raw_user_meta_data->>'business_name','') as company,
  coalesce(u.raw_user_meta_data->>'full_name','')     as contact_name,
  'TRIAL'                                             as segment,
  coalesce(u.raw_user_meta_data->>'business_type','') as vertical,
  ''                                                  as city,
  coalesce(u.phone, u.raw_user_meta_data->>'phone','') as phone,
  u.email,
  u.created_at::date                                  as signup_date,
  case when u.last_sign_in_at > now() - interval '14 days'
       then 'ACTIVE' else 'DORMANT' end               as status
from auth.users u
order by u.created_at;
