using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Сводное описание для Manipulation
/// </summary>
/// 


public class Manipulation
{

    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string City { get; set; }
    public bool Age { get; set; }
   
    public Manipulation()
    {
        
    }
	public Manipulation(string firstName, string lastName, string city, bool age)
	{
        FirstName = firstName;
        LastName = lastName;
        City = city;
        Age = age;

	}
}