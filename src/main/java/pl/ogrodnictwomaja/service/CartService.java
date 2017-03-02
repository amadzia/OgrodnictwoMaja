package pl.ogrodnictwomaja.service;

import pl.ogrodnictwomaja.model.Cart;

/**
 * Created by PC on 2016-11-14.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
