using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductClass
/// </summary>
public static class ProductClass
{
    //obvious variables
    private static String product;
    private static int price;
    private static int quantity;

    //get and set the name of the product
    public static String productName
    {
        get
        {
            return product;
        }
        set
        {
            product = value;
        }
    }

    //get and set the price of the product
    public static int productPrice
    {
        get
        {
            return price;
        }
        set
        {
            price = value;
        }
    }

    //get and set the quantity of the product
    public static int productQty
    {
        get
        {
            return quantity;
        }
        set
        {
            quantity = value;
        }
    }

    
}