package productcrudapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import jakarta.servlet.http.HttpServletRequest;
import net.bytebuddy.asm.Advice.OffsetMapping.ForOrigin.Renderer.ForReturnTypeName;
import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;
import productcrudapp.service.ProductService;

@Controller
public class MainController {
	@Autowired
	private ProductService productDao;

	@RequestMapping("/home")
	public String home(Model m) {
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		System.out.println(products.toString());
		return "index";
	}

	@RequestMapping("/add-product")
	public String addProduct(Model model) {

		return "add_product";
	}

//handle add product
	@RequestMapping(path = "handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home"	);
		return redirectView;
	}
	
	//delete handler
	@RequestMapping("/delete/{id}")
	public RedirectView deleteProduct(@PathVariable("id")int id, HttpServletRequest request) {
		RedirectView redirectView=new RedirectView();
		productDao.deleteProduct(id);
		redirectView.setUrl(request.getContextPath()+"/home"	);
		return redirectView;
		
	}
	//update
	@RequestMapping("/update/{id}")
	private String updateForm(@PathVariable("id")int id,Model model) {
		Product product = productDao.getProduct(id);
		model.addAttribute("product",product);
		return "update";
	}
}
