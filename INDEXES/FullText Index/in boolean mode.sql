select * , match (title,body) against ( 'react  redux') as relevant_score
from posts
where match (title,body) against ( 'react  -redux +form 'in boolean mode)