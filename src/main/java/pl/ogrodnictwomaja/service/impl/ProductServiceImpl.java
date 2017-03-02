package pl.ogrodnictwomaja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.ogrodnictwomaja.dao.ProductDao;
import pl.ogrodnictwomaja.model.Product;
import pl.ogrodnictwomaja.service.ProductService;

import java.util.List;

/**
 * Created by PC on 2016-11-09.
 */

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    public List<Product> getProductList() {
        return productDao.getProductList();
    }

    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void editProduct(Product product) {
        productDao.editProduct(product);
    }

    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }
}
