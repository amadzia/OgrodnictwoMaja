package pl.ogrodnictwomaja.service;

import pl.ogrodnictwomaja.model.CustomerOrder;

/**
 * Created by PC on 2016-11-17.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
