package ru.javawebinar.topjava.dao;

import ru.javawebinar.topjava.model.Meal;

import java.util.List;

public interface MealDAO {
    List<Meal> getAll();
    boolean create(Meal meal);
    boolean update(int id, Meal meal);
    boolean delete(Meal meal);
    Meal getById(int id);
}
