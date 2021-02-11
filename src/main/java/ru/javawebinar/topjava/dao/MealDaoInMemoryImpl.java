package ru.javawebinar.topjava.dao;

import ru.javawebinar.topjava.model.Meal;

import java.time.LocalDateTime;
import java.time.Month;
import java.util.Arrays;
import java.util.List;

public class MealDaoInMemoryImpl implements MealDAO{
    private static List<Meal> meals = Arrays.asList(
            new Meal(1, LocalDateTime.of(2020, Month.JANUARY, 30, 10, 0), "Завтрак", 500),
            new Meal(2, LocalDateTime.of(2020, Month.JANUARY, 30, 13, 0), "Обед", 1000),
            new Meal(3, LocalDateTime.of(2020, Month.JANUARY, 30, 20, 0), "Ужин", 500),
            new Meal(4, LocalDateTime.of(2020, Month.JANUARY, 31, 0, 0), "Еда на граничное значение", 100),
            new Meal(5, LocalDateTime.of(2020, Month.JANUARY, 31, 10, 0), "Завтрак", 1000),
            new Meal(6, LocalDateTime.of(2020, Month.JANUARY, 31, 13, 0), "Обед", 500),
            new Meal(7, LocalDateTime.of(2020, Month.JANUARY, 31, 20, 0), "Ужин", 410)
    );

    @Override
    public List<Meal> getAll() {
        return meals;
    }

    @Override
    public boolean create(Meal meal) {
        return meals.add(meal);
    }

    @Override
    public boolean update(int id, Meal meal) {
        if (meals.size() > id) {
            meals.set(id, meal);
            return true;
        }
        return false;
    }

    @Override
    public boolean delete(Meal meal) {
        return meals.remove(meal);
    }

    @Override
    public Meal getById(int id) {
        return meals.stream().filter(m -> m.getId() == id).findFirst().orElse(null);
    }
}
