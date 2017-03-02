package pl.ogrodnictwomaja.dao;

import pl.ogrodnictwomaja.model.Cart;
import pl.ogrodnictwomaja.model.CartItem;

/**
 * Created by PC on 2016-11-14.
 */
public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
