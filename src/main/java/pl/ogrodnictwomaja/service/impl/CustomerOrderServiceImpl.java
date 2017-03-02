package pl.ogrodnictwomaja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.ogrodnictwomaja.dao.CustomerOrderDao;
import pl.ogrodnictwomaja.model.Cart;
import pl.ogrodnictwomaja.model.CartItem;
import pl.ogrodnictwomaja.model.CustomerOrder;
import pl.ogrodnictwomaja.service.CartService;
import pl.ogrodnictwomaja.service.CustomerOrderService;

import java.util.List;

/**
 * Created by PC on 2016-11-17.
 */

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;


    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }
}
