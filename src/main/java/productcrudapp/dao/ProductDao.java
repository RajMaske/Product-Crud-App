package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	// create
	@Transactional
	public int createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
		return 1;
	}

	// get all products

	public List<Product> getProducts() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		System.out.println(products);
		return products;
	}

	// delete the single product
	@Transactional
	public void deleteProduct(int pid) {
		Product product = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}

	// get the single product

	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}
	
	//
}
