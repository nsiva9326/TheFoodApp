package com.food.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.food.DAOImp.MenuDAOImp;
import com.food.model.Cart;
import com.food.model.CartItem;
import com.food.model.Menu;

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public CartServlet() {
        super();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
//System.out.println(cart);
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String action = req.getParameter("action");
        if ("add".equals(action)) {
            addItemToCart(req, cart);
        } else if ("update".equals(action)) {
            updateCartItem(req, cart);
        } else if ("remove".equals(action)) {
            removeItemFromCart(req, cart);
        }

        session.setAttribute("cart", cart);
        resp.sendRedirect("dummy.jsp");
    }

    private void addItemToCart(HttpServletRequest req, Cart cart) {
        int menuId = Integer.parseInt(req.getParameter("menuId"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        MenuDAOImp menuDAO = new MenuDAOImp();
        Menu menu = menuDAO.getMenu(menuId);

        HttpSession session = req.getSession();
        session.setAttribute("restaurantId", menu.getRestaurantId());

        if (menu != null) {
            CartItem item = new CartItem(menu.getMenuId(), menu.getRestaurantId(), menu.getItemName(), quantity, menu.getPrice());
            cart.addItem(item);
        }
    }

    public void updateCartItem(HttpServletRequest req, Cart cart) {
        int menuId = Integer.parseInt(req.getParameter("menuId"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        cart.updateItem(menuId, quantity);
    }

    public void removeItemFromCart(HttpServletRequest req, Cart cart) {
        int menuId = Integer.parseInt(req.getParameter("menuId"));
        cart.removeItem(menuId);
    }
}
