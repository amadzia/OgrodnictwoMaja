package pl.ogrodnictwomaja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.ogrodnictwomaja.dao.CartDao;
import pl.ogrodnictwomaja.model.Cart;
import pl.ogrodnictwomaja.service.CartService;

/**
 * Created by PC on 2016-11-14.
 */

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {

        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }
}
