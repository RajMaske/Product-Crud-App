package productcrudapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;
@Service
public class ProductService {
	@Autowired
private ProductDao productDao;
	public int createProduct(Product product) {
		return productDao.createProduct(product);
		
	}
	public List<Product> getProducts(){
		return productDao.getProducts();
	}
	public void deleteProduct(int pid) {
		productDao.deleteProduct(pid);
	}
	public Product getProduct(int pid) {
		return productDao.getProduct(pid);
	}

}
