package broker.controller;

import broker.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class MainController {

    /*First method on start application*/
    /*�������� ���� �� ������ ���������� (��. ��������� ��������� � ��������� ���� ����� ������) */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        return new ModelAndView("index","userJSP",new User());
    }

    /*��� ������ �� index.jsp ������������ �����
    <spring:form method="post"  modelAttribute="userJSP" action="check-user">,
    �� ������� ��� ����
     */
    @RequestMapping(value = "/check-user", method = RequestMethod.POST)
    public ModelAndView checkUser(@ModelAttribute("userJSP") User user) {
        ModelAndView modelAndView = new ModelAndView();

        //��� �������������, ���� ����� ����� �������
        modelAndView.setViewName("secondPage");

        //���������� � ������� userJSP (������������ �� �������� *.jsp ������ user
        modelAndView.addObject("userJSP", user);

        return modelAndView; //����� ����� �� �������������, ��������� ���� ����, ���� ��� ����� �������.
    }

    @RequestMapping(value = "/just")
    public ModelAndView just() {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("justpage");
        return modelAndView;
    }

    @RequestMapping(value = "/user-action")
    public ModelAndView userAction(@ModelAttribute("user") User user){
        return new ModelAndView("just2","user",user);
    }
}