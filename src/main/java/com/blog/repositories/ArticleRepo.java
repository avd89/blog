package com.blog.repositories;

import com.blog.domain.Article;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ArticleRepo extends CrudRepository<Article,Long> {
    List<Article> findByTag(String tag);
}
