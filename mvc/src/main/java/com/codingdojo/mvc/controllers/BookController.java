// Rendering Books practice assignment tasks below

// 	create a second controller called BookContoller

package com.codingdojo.mvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.services.BookService;

// have the @Controller annotation

@Controller
public class BookController {
	
	@Autowired
	BookService bookService;

//	Add a route in your controller for "/books/3", where the number is a variable for the ID of the book.
	
	@GetMapping("/books/{bookId}")
	public String show(Model model, @PathVariable("bookId") Long bookId) {
		
		System.out.println(bookId);
		Book book = bookService.findBook(bookId);
		System.out.println(book);
		
		model.addAttribute("book", book);
		
//		Render the JSP with the book information. To test, manually enter the ID of the book in the url. You can use Workbench to see what IDs exist.
		
		return "show.jsp";
	}
	
//	All Books practice assignment tasks below
	
//	add a new route, "/books"
	
	@RequestMapping("/books")
	public String index(Model model) {
		
//		we want to show user all books we have in our database
		
		List<Book> books = bookService.allBooks();
		
//		use view model to make all books render in your index.jsp
		
		model.addAttribute("books", books);
		return "index.jsp";
	}
}
