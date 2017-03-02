package pl.ogrodnictwomaja.dao;

import pl.ogrodnictwomaja.model.Customer;

import java.util.List;

/**
 * Created by PC on 2016-11-13.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
