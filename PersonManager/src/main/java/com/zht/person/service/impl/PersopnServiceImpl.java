package com.zht.person.service.impl;

import com.zht.person.mapper.PersonMapper;
import com.zht.person.pojo.Person;
import com.zht.person.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 17:24
 */
@Service("personService")
public class PersopnServiceImpl implements PersonService {

    @Resource
    PersonMapper personMapper;

    @Override
    public List<Person> selAll() {
        List<Person> people = personMapper.selectByExample(null);
        return people;
    }

    @Override
    public int add(Person person) {
        int i = personMapper.insertSelective(person);
        return i;
    }

    @Override
    public int delById(int id) {
        int i = personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
