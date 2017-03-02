package pl.ogrodnictwomaja.dao;

import pl.ogrodnictwomaja.model.Cart;

import java.io.IOException;

/**
 * Created by PC on 2016-11-08.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

}
