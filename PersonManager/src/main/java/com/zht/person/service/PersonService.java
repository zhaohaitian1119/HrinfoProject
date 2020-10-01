package com.zht.person.service;

import com.zht.person.pojo.Person;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 17:24
 */
public interface PersonService {
    public List<Person> selAll();
    public int add(Person person);
    public int delById(int id);
}
