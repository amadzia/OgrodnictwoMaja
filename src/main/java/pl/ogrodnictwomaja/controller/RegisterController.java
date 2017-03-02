package pl.ogrodnictwomaja.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.ogrodnictwomaja.model.BillingAddress;
import pl.ogrodnictwomaja.model.Customer;
import pl.ogrodnictwomaja.model.ShippingAddress;
import pl.ogrodnictwomaja.service.CustomerService;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by PC on 2016-11-12.
 */

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model) {

        if (result.hasErrors()) {
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers();

        for (int i = 0; i < customerList.size(); i++) {

            if (customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
                model.addAttribute("emailMsg", "Istnieje konto powiązane z tym adresem e-mail");

                return "registerCustomer";
            }

            if (customer.getUsername().equals(customerList.get(i).getUsername())) {
                model.addAttribute("usernameMsg", "Istnieje konto użytkownika o podanej nazwie");

                return "registerCustomer";
            }
        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);

        return "registerCustomerSuccess";
    }
}
