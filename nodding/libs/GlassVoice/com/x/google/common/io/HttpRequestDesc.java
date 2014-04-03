package com.x.google.common.io;

import com.x.google.common.util.LinkedMultiHashtable;
import com.x.google.common.util.text.TextUtil;
import com.x.google.common.util.text.UriUtil;
import com.x.google.debug.Log;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;

public class HttpRequestDesc
{
  private static final String DEFAULT_URL_SCHEME = "http://";
  private static final String HTTP_HEADER_SEPARATOR = ";";
  private static final String[] USER_INFO_HEADER = { "Geo-Position", "Cookie" };
  private String fragment;
  private String host;
  private final Vector httpHeaders = new Vector();
  private String path;
  private String scheme;
  private String url;
  private LinkedMultiHashtable urlParams = new LinkedMultiHashtable();

  public HttpRequestDesc(HttpRequestDesc paramHttpRequestDesc)
  {
    this.scheme = paramHttpRequestDesc.scheme;
    this.host = paramHttpRequestDesc.host;
    this.path = paramHttpRequestDesc.path;
    addHttpHeaders(paramHttpRequestDesc.httpHeaders);
    this.urlParams = paramHttpRequestDesc.urlParams.clone();
  }

  public HttpRequestDesc(String paramString)
  {
    if (paramString.indexOf(":") == -1)
      paramString = "http://" + paramString;
    this.url = paramString;
    try
    {
      parse(paramString);
      return;
    }
    catch (IOException localIOException)
    {
      Log.logThrowable(getClass().getName(), new Throwable("Error parsing url" + localIOException.getClass().getName()));
      this.host = paramString;
      this.scheme = "";
    }
  }

  private void addHttpHeaders(StringBuffer paramStringBuffer)
  {
    for (int i = 0; i < this.httpHeaders.size(); i++)
    {
      String[] arrayOfString = (String[])this.httpHeaders.elementAt(i);
      if (!filterHttpHeader(paramStringBuffer, arrayOfString[0]))
      {
        paramStringBuffer.append(arrayOfString[0]);
        paramStringBuffer.append('=');
        paramStringBuffer.append(arrayOfString[1]);
      }
      paramStringBuffer.append(',');
    }
  }

  private String buildUrl()
  {
    StringBuffer localStringBuffer = new StringBuffer(this.scheme);
    localStringBuffer.append(this.host);
    localStringBuffer.append(this.path);
    if (!this.urlParams.isEmpty())
    {
      localStringBuffer.append('?');
      localStringBuffer.append(UriUtil.urlJoin(this.urlParams));
    }
    if (this.fragment != null)
    {
      localStringBuffer.append('#');
      localStringBuffer.append(this.fragment);
    }
    return localStringBuffer.toString();
  }

  private boolean equalsHttpHeaders(Vector paramVector)
  {
    if (this.httpHeaders.size() != paramVector.size())
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= this.httpHeaders.size())
        break label76;
      String[] arrayOfString = (String[])this.httpHeaders.elementAt(i);
      if (getHttpHeaderNum(this.httpHeaders, arrayOfString[0], arrayOfString[1]) != getHttpHeaderNum(paramVector, arrayOfString[0], arrayOfString[1]))
        break;
    }
    label76: return true;
  }

  private boolean filterHttpHeader(StringBuffer paramStringBuffer, Object paramObject)
  {
    if (!isHttpHeaderFilterEnabled());
    while (true)
    {
      return false;
      for (int i = 0; i < USER_INFO_HEADER.length; i++)
        if (USER_INFO_HEADER[i].equals(paramObject))
        {
          paramStringBuffer.append("X");
          paramStringBuffer.append(USER_INFO_HEADER[i].substring(1));
          paramStringBuffer.append("=XXXX");
          return true;
        }
    }
  }

  private static int getHttpHeaderNum(Vector paramVector, String paramString1, String paramString2)
  {
    int i = 0;
    int j = 0;
    while (i < paramVector.size())
    {
      String[] arrayOfString = (String[])paramVector.elementAt(i);
      if ((arrayOfString[0].equals(paramString1)) && (arrayOfString[1].equals(paramString2)))
        j++;
      i++;
    }
    return j;
  }

  private void parse(String paramString)
    throws IOException
  {
    int i = paramString.indexOf("//");
    int j;
    int k;
    if (i != -1)
    {
      j = i + 2;
      this.scheme = paramString.substring(0, j);
      k = paramString.indexOf('?', j);
      if (k == -1)
        k = paramString.indexOf('#', j);
      if (k != -1)
        break label78;
      parseHostPath(paramString, j, paramString.length());
    }
    while (true)
    {
      return;
      this.scheme = "http://";
      j = 0;
      break;
      label78: parseHostPath(paramString, j, k);
      int m;
      if (paramString.charAt(k) == '?')
      {
        m = paramString.indexOf('#', k);
        if (m == -1)
          m = paramString.length();
        parseParams(paramString, k + 1, m);
      }
      while (m < paramString.length())
      {
        this.fragment = paramString.substring(m + 1);
        return;
        m = k;
      }
    }
  }

  private void parseHostPath(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramString.indexOf('/', paramInt1);
    if ((i < paramInt2) && (i > 0))
    {
      this.host = paramString.substring(paramInt1, i);
      this.path = paramString.substring(i, paramInt2);
      return;
    }
    this.host = paramString.substring(paramInt1, paramInt2);
    this.path = "";
  }

  private void parseParams(String paramString, int paramInt1, int paramInt2)
    throws IOException
  {
    this.urlParams = UriUtil.splitUrlParams(paramString.substring(paramInt1, paramInt2));
  }

  public void addHttpHeader(String paramString1, String paramString2)
  {
    this.httpHeaders.addElement(new String[] { paramString1, paramString2 });
  }

  public void addHttpHeaders(Vector paramVector)
  {
    for (int i = 0; i < paramVector.size(); i++)
      this.httpHeaders.addElement(paramVector.elementAt(i));
  }

  public boolean containsParam(String paramString)
  {
    return this.urlParams.containsKey(paramString);
  }

  public boolean equals(Object paramObject)
  {
    HttpRequestDesc localHttpRequestDesc;
    if ((paramObject instanceof HttpRequestDesc))
    {
      localHttpRequestDesc = (HttpRequestDesc)paramObject;
      if (equalsHttpHeaders(localHttpRequestDesc.httpHeaders))
        break label25;
    }
    label25: 
    while ((!this.urlParams.equals(localHttpRequestDesc.urlParams)) || (!TextUtil.equals(this.scheme, localHttpRequestDesc.scheme)) || (!TextUtil.equals(this.host, localHttpRequestDesc.host)) || (!TextUtil.equals(this.path, localHttpRequestDesc.path)) || (!TextUtil.equals(this.fragment, localHttpRequestDesc.fragment)))
      return false;
    return true;
  }

  public String getFragment()
  {
    return this.fragment;
  }

  public String getHost()
  {
    return this.host;
  }

  public String getHttpHeader(String paramString)
  {
    for (int i = 0; i < this.httpHeaders.size(); i++)
    {
      String[] arrayOfString = (String[])this.httpHeaders.elementAt(i);
      if (arrayOfString[0].equals(paramString))
        return arrayOfString[1];
    }
    return null;
  }

  public Hashtable getHttpHeaders()
  {
    Hashtable localHashtable = new Hashtable();
    for (int i = 0; i < this.httpHeaders.size(); i++)
    {
      String[] arrayOfString = (String[])this.httpHeaders.elementAt(i);
      String str = arrayOfString[1];
      if ((localHashtable.containsKey(arrayOfString[0])) && (arrayOfString[0].equals("Cookie")))
        str = str + ";" + (String)localHashtable.get(arrayOfString[0]);
      localHashtable.put(arrayOfString[0], str);
    }
    return localHashtable;
  }

  public String getParam(String paramString)
  {
    if (containsParam(paramString))
      return (String)this.urlParams.get(paramString).firstElement();
    return null;
  }

  public String getPath()
  {
    return this.path;
  }

  public String getScheme()
  {
    return this.scheme;
  }

  public String getUrl()
  {
    String str = this.url;
    if (str == null)
    {
      str = buildUrl();
      this.url = str;
    }
    return str;
  }

  public String getUrlForceRebuild()
  {
    this.url = null;
    return getUrl();
  }

  public int hashCode()
  {
    int i;
    int k;
    label27: int n;
    label45: int i1;
    int i2;
    if (this.scheme == null)
    {
      i = 0;
      int j = 37 * (i + 629);
      if (this.host != null)
        break label97;
      k = 0;
      int m = 37 * (k + j);
      if (this.path != null)
        break label108;
      n = 0;
      i1 = 37 * (n + m);
      String str = this.fragment;
      i2 = 0;
      if (str != null)
        break label120;
    }
    while (true)
    {
      return 37 * (i1 + i2) + this.urlParams.hashCode();
      i = this.scheme.hashCode();
      break;
      label97: k = this.host.hashCode();
      break label27;
      label108: n = this.path.hashCode();
      break label45;
      label120: i2 = this.fragment.hashCode();
    }
  }

  protected boolean isHttpHeaderFilterEnabled()
  {
    return true;
  }

  public void setParam(String paramString, long paramLong)
  {
    setParam(paramString, Long.toString(paramLong));
  }

  public void setParam(String paramString1, String paramString2)
  {
    if (this.urlParams.contains(paramString1))
      this.urlParams.remove(paramString1);
    this.urlParams.put(paramString1, paramString2);
    this.url = null;
  }

  public void setPath(String paramString)
  {
    this.url = null;
    this.path = paramString;
  }

  public void setScheme(String paramString)
  {
    if (paramString == null);
    for (this.scheme = "http://"; ; this.scheme = paramString)
    {
      this.url = null;
      return;
    }
  }

  public String toString()
  {
    return super.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.io.HttpRequestDesc
 * JD-Core Version:    0.6.2
 */