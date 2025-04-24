use sql_blog;
explain select * FROM sql_blog.posts where title like '%redux%' or body like '%redux%';