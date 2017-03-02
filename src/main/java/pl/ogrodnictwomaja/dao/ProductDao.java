package pl.ogrodnictwomaja.dao;

import pl.ogrodnictwomaja.model.Product;

import java.util.List;

/**
 * Created by PC on 2016-11-02.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}
