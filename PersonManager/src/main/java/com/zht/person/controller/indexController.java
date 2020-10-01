package com.zht.person.controller;

import com.sun.xml.internal.bind.v2.model.core.ID;
import com.zht.person.pojo.Person;
import com.zht.person.service.PersonService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-01 17:23
 */
@Controller
public class indexController {

    @Resource
    PersonService personServicel;

    @RequestMapping("/")
    public String toindex(Model model){

        List<Person> people = personServicel.selAll();
        model.addAttribute("person",people);

        return "index";
    }

    @RequestMapping("/add")
    public String add(HttpServletRequest request){
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String rank = request.getParameter("rank");
        String Sage = request.getParameter("age");
        int age = 0;
        if(Sage != null || !Sage.equals("")){
            age = Integer.parseInt(Sage);
        }
        String department = request.getParameter("department");
        Person person = new Person();
        person.setAge(age);
        person.setDepartment(department);
        person.setName(name);
        person.setRank(rank);
        person.setSex(sex);
        int add = personServicel.add(person);
        System.out.println(add);
        return "redirect:/";
    }
    @RequestMapping("/del/{id}")
    public String del(HttpServletRequest request,@PathVariable int id){

        personServicel.delById(id);
        return "redirect:/";
    }
}
