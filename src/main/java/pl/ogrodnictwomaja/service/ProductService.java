package pl.ogrodnictwomaja.service;

import pl.ogrodnictwomaja.model.Product;

import java.util.List;

/**
 * Created by PC on 2016-11-09.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
