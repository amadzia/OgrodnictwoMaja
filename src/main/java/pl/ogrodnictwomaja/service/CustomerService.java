package pl.ogrodnictwomaja.service;

import pl.ogrodnictwomaja.model.Customer;

import java.util.List;

/**
 * Created by PC on 2016-11-13.
 */
public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
