package db;

import model.News;

import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static List<News> allNews = new ArrayList<>();
    static {
        allNews.add(new News("Spiderman: No way home", "New movie is out!", "Azhar Ye.", "cinema"));
        allNews.add(new News("Van Gogh", "Новая выставка", "Islam I.", "culture"));
        allNews.add(new News("Ronaldo!", "Новости футбола блаблабла", "Islam I.", "sport"));
        allNews.add(new News( "Финальный сезон Атаки Титанов вышел!", "MUST SEE!!", "Azhar Ye.", "cinema"));
        allNews.add(new News( "Архитектура Средневековья", "Обзор шедевров архитектуры", "Islam I.", "culture"));
    }

    public static List <News> getAllNews(){return allNews;}
    public static List <News> getNewsbyCategory(String category){
        List <News> newsByCategory = new ArrayList<>();
        for (News news : allNews){
            if (news.getCategory().equals(category)){
                newsByCategory.add(news);
            }
        }
        return newsByCategory;
    }

    public void addNews(News news){
        allNews.add(news);
    }
}
