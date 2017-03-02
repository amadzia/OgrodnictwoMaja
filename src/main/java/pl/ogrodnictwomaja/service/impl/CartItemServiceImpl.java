package pl.ogrodnictwomaja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.ogrodnictwomaja.dao.CartItemDao;
import pl.ogrodnictwomaja.model.Cart;
import pl.ogrodnictwomaja.model.CartItem;
import pl.ogrodnictwomaja.service.CartItemService;

/**
 * Created by PC on 2016-11-14.
 */

@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart) {
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId) {
        return cartItemDao.getCartItemByProductId(productId);
    }
}
