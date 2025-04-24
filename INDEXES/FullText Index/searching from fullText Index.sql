create fulltext index idx_title_body on posts (title,body);
select * from posts
where match (title,body) against ( 'react  redux')