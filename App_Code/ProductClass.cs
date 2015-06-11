using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductClass
/// </summary>
public class ProductClass
{
    //obvious variables
    private String product;
    private int price;
    private int quantity;

    //constructor
    public ProductClass()
    {

    }

    //get and set the name of the product
    public String productName
    {
        get
        {
            return product;
        }
        set
        {
            this.product = value;
        }
    }

    //get and set the price of the product
    public int productPrice
    {
        get
        {
            return price;
        }
        set
        {
            this.price = value;
        }
    }

    //get and set the price of the product
    public int productQty
    {
        get
        {
            return quantity;
        }
        set
        {
            this.price = value;
        }
    }




}