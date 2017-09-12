package com.heyzap.sdk.extensions.applovin;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class AppLovinLib
  implements FREExtension
{
  public FREContext createContext(String args)
  {
    return new AppLovinLibContext();
  }

  public void dispose() {}

  public void initialize() {}
}
