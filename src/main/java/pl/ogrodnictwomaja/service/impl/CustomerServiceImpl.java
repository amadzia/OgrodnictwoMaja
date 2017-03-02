package pl.ogrodnictwomaja.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.ogrodnictwomaja.dao.CustomerDao;
import pl.ogrodnictwomaja.model.Customer;
import pl.ogrodnictwomaja.service.CustomerService;

import java.util.List;

/**
 * Created by PC on 2016-11-13.
 */

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    public Customer getCustomerById(int customerId) {
        return customerDao.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers() {
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername(String username) {
        return customerDao.getCustomerByUsername(username);
    }

}
