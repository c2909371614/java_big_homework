package com.shady.controller;


import com.shady.pojo.Books;
import com.shady.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    //@Qualifier(value = "BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list=bookService.queryAllBook();

        model.addAttribute("list", list);
        //这里的return将调用视图解析器，"转发"给浏览器一个jsp页面
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id, Model model){
        System.out.println("这个id是"+id);
        Books book = bookService.queryBookById(id);  //要改哪本书，先把这本书的数据都给获取咯
        model.addAttribute("QBooks", book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String toDeletePaper(@PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model) {
        Books book = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<Books>();
        if(book==null){
            model.addAttribute("error", "未查到");
            list=bookService.queryAllBook();
        }
        else{
            list.add(book);
        }
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/directory")
    public String directory(){
        return "directory";
    }
    @RequestMapping("/reader")
    public String reader(){
        return "reader";
    }

}
