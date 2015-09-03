using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ManipulationContainer
/// </summary>
public static class ManipulationContainer
{
    private static List<Manipulation> appManipulations;
    public static List<Manipulation> AppManipulations
    {
        get
        {
            if (appManipulations == null)
                appManipulations = new List<Manipulation>();
            return appManipulations;
        }
    }

    public static void Clean()
    {
        appManipulations.Clear();
    }
}