package com.techelevator.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.Category;
import com.techelevator.model.CategoryDAO;
import com.techelevator.model.Course;
import com.techelevator.model.CourseDAO;
import com.techelevator.model.Curriculum;
import com.techelevator.model.CurriculumDAO;
import com.techelevator.model.Homework;
import com.techelevator.model.HomeworkDAO;
import com.techelevator.model.User;
import com.techelevator.model.UserDAO;

@Controller
public class UserController {

	private UserDAO userDAO;
	
	@Autowired
	CurriculumDAO curriculumDao;

	@Autowired
	CourseDAO courseDao;
	
	@Autowired
	CategoryDAO categoryDao;
	
	@Autowired
	HomeworkDAO homeworkDao;
	
	@Autowired
	public UserController(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@RequestMapping("/")
	public String displayHomepage(ModelMap map) {
		return "home";
	}
	
	
	@RequestMapping(path="/courseDetails", method=RequestMethod.GET) 
	public String displayStudentClass(ModelMap modelHolder, @RequestParam int id) {
		modelHolder.addAttribute("course", courseDao.getCourseById(id));
		return "courseDetails";
	}
	
	@RequestMapping(path="/courseDetails", method=RequestMethod.POST) 
	public String updateHomeworkStatus(ModelMap modelHolder, @RequestParam int id, @RequestParam boolean complete) {
		System.out.println(complete);
		homeworkDao.updateHomeworkByCourseId(id, !complete);
		return "redirect:/courseDetails?id=" + id;
	}
	
	
	@RequestMapping("/StudentPortal") 
	public String displayStudentPortal(ModelMap map) {

	    List<Category> categoryList = categoryDao.getAllCategories();
	 //   List<Category> courseList = categoryDao.getAllCategories();
	 //   List<Homework> homeworkList = homeworkDao.getAllHomework();
	 //   List<Curriculum> curriculumList = curriculumDao.getAllCurriculum();
	//  Category categoryById = categoryDao.getCategoryById(1);
	    
	//  map.put("categoryId",categoryById);
	    map.put("categories", categoryList);
	//    map.put("courses", courseList);
	//    map.put("homework",  homeworkList);
	return "studentPortal";
	}
	
	
	

	@RequestMapping(path="/users/new", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/users", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute ("user") User user, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}
		
		userDAO.saveUser(user.getUserName(), user.getPassword());
		return "redirect:/login";
	}
	
}
