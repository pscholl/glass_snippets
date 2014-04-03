package com.x.google.common.async;

import com.x.google.common.io.IoUtil;
import com.x.google.common.task.AbstractTask;
import com.x.google.common.task.Task;
import com.x.google.common.task.TaskRunner;
import java.io.ByteArrayInputStream;

public class ClientLoginService
  implements LoginService
{
  private static final String DEFAULT_ACCOUNTS_URL = "https://www.google.com/accounts/";
  private final String accountsUrl;
  private final AsyncHttpRequestFactory factory;
  private final TaskRunner runner;

  public ClientLoginService(TaskRunner paramTaskRunner, AsyncHttpRequestFactory paramAsyncHttpRequestFactory)
  {
    this(paramTaskRunner, paramAsyncHttpRequestFactory, "https://www.google.com/accounts/");
  }

  public ClientLoginService(TaskRunner paramTaskRunner, AsyncHttpRequestFactory paramAsyncHttpRequestFactory, String paramString)
  {
    this.runner = paramTaskRunner;
    this.factory = paramAsyncHttpRequestFactory;
    this.accountsUrl = paramString;
  }

  public LoginRequest createLoginRequest()
  {
    return new LoginRequestImpl(this.runner, this.factory, this.accountsUrl);
  }

  public static class LoginRequestImpl extends AbstractRequest
    implements LoginRequest, Runnable
  {
    private static final String ACCOUNT_TYPE_STRING = "accountType=";
    private static final char AMPERSAND_CHAR = '&';
    private static final String AUTH_STRING = "Auth=";
    private static final String CAPTCHA_TOKEN = "CaptchaToken=";
    private static final String CAPTCHA_URL = "CaptchaUrl=";
    private static final String CLIENT_LOGIN_STRING = "ClientLogin";
    private static final String EMAIL_STRING = "Email=";
    private static final String IGNORE_FIRST_CHAR_CASE = "&ignoreFirstCharCase=true";
    private static final String LOGIN_CAPTCHA_RESPONSE_STRING = "logincaptcha=";
    private static final String LOGIN_CAPTCHA_TOKEN_STRING = "logintoken=";
    private static final String PASSWORD_STRING = "Passwd=";
    private static final String SERVICE_STRING = "service=";
    private Object accountType;
    private final String accountsUrl;
    private String authtoken;
    private String captchaImageUrl;
    private String captchaResponse;
    private String captchaToken;
    private final String clientLoginUrl;
    private AsyncHttpRequestFactory factory;
    private String password;
    private AsyncHttpRequest request;
    private int responseCode;
    private TaskRunner runner;
    private String service;
    private String username;

    public LoginRequestImpl(TaskRunner paramTaskRunner, AsyncHttpRequestFactory paramAsyncHttpRequestFactory, String paramString)
    {
      this.runner = paramTaskRunner;
      this.factory = paramAsyncHttpRequestFactory;
      this.accountsUrl = paramString;
      this.clientLoginUrl = (paramString + "ClientLogin");
    }

    public Object getAccountType()
    {
      try
      {
        Object localObject2 = this.accountType;
        return localObject2;
      }
      finally
      {
        localObject1 = finally;
        throw localObject1;
      }
    }

    public String getAuthToken()
    {
      try
      {
        checkCompleted();
        String str = this.authtoken;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getCaptchaImageUrl()
    {
      try
      {
        String str = this.captchaImageUrl;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getCaptchaToken()
    {
      try
      {
        String str = this.captchaToken;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getPassword()
    {
      try
      {
        String str = this.password;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public int getResponseCode()
    {
      try
      {
        int i = this.responseCode;
        return i;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getService()
    {
      try
      {
        String str = this.service;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public String getUserName()
    {
      try
      {
        String str = this.username;
        return str;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    protected void processLine(String paramString)
    {
      if (paramString.startsWith("Auth="))
        setAuthToken(paramString.substring("Auth=".length()));
      do
      {
        return;
        if (paramString.startsWith("CaptchaToken="))
        {
          setCaptchaToken(paramString.substring("CaptchaToken=".length()));
          return;
        }
      }
      while (!paramString.startsWith("CaptchaUrl="));
      setCaptchaImageUrl(paramString.substring("CaptchaUrl=".length()));
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   4: invokeinterface 154 1 0
      //   9: ifeq +54 -> 63
      //   12: aload_0
      //   13: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   16: invokeinterface 157 1 0
      //   21: ifeq +43 -> 64
      //   24: aload_0
      //   25: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   28: invokeinterface 161 1 0
      //   33: invokevirtual 166	java/lang/Exception:printStackTrace	()V
      //   36: aload_0
      //   37: aload_0
      //   38: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   41: invokeinterface 161 1 0
      //   46: invokevirtual 170	com/x/google/common/async/ClientLoginService$LoginRequestImpl:notifyException	(Ljava/lang/Exception;)V
      //   49: aload_0
      //   50: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   53: invokeinterface 173 1 0
      //   58: aload_0
      //   59: aconst_null
      //   60: putfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   63: return
      //   64: aload_0
      //   65: aload_0
      //   66: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   69: invokeinterface 175 1 0
      //   74: putfield 111	com/x/google/common/async/ClientLoginService$LoginRequestImpl:responseCode	I
      //   77: aload_0
      //   78: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   81: invokeinterface 179 1 0
      //   86: ifnull +79 -> 165
      //   89: new 181	com/x/google/common/io/LineReader
      //   92: dup
      //   93: new 183	java/io/InputStreamReader
      //   96: dup
      //   97: aload_0
      //   98: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   101: invokeinterface 179 1 0
      //   106: invokespecial 186	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   109: invokespecial 189	com/x/google/common/io/LineReader:<init>	(Ljava/io/Reader;)V
      //   112: astore 4
      //   114: aload 4
      //   116: invokevirtual 192	com/x/google/common/io/LineReader:readLine	()Ljava/lang/String;
      //   119: astore 5
      //   121: aload 5
      //   123: ifnull +42 -> 165
      //   126: aload_0
      //   127: aload 5
      //   129: invokevirtual 194	com/x/google/common/async/ClientLoginService$LoginRequestImpl:processLine	(Ljava/lang/String;)V
      //   132: goto -18 -> 114
      //   135: astore_3
      //   136: aload_3
      //   137: invokevirtual 195	java/io/IOException:printStackTrace	()V
      //   140: aload_0
      //   141: aload_3
      //   142: invokevirtual 170	com/x/google/common/async/ClientLoginService$LoginRequestImpl:notifyException	(Ljava/lang/Exception;)V
      //   145: goto -96 -> 49
      //   148: astore_1
      //   149: aload_0
      //   150: getfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   153: invokeinterface 173 1 0
      //   158: aload_0
      //   159: aconst_null
      //   160: putfield 148	com/x/google/common/async/ClientLoginService$LoginRequestImpl:request	Lcom/x/google/common/async/AsyncHttpRequest;
      //   163: aload_1
      //   164: athrow
      //   165: aload_0
      //   166: invokevirtual 198	com/x/google/common/async/ClientLoginService$LoginRequestImpl:notifyCompleted	()V
      //   169: goto -120 -> 49
      //   172: astore_2
      //   173: ldc 200
      //   175: aload_2
      //   176: invokestatic 206	com/x/google/debug/Log:logThrowable	(Ljava/lang/Object;Ljava/lang/Throwable;)V
      //   179: aload_0
      //   180: aload_2
      //   181: invokevirtual 170	com/x/google/common/async/ClientLoginService$LoginRequestImpl:notifyException	(Ljava/lang/Exception;)V
      //   184: goto -135 -> 49
      //
      // Exception table:
      //   from	to	target	type
      //   64	114	135	java/io/IOException
      //   114	121	135	java/io/IOException
      //   126	132	135	java/io/IOException
      //   165	169	135	java/io/IOException
      //   12	49	148	finally
      //   64	114	148	finally
      //   114	121	148	finally
      //   126	132	148	finally
      //   136	145	148	finally
      //   165	169	148	finally
      //   173	184	148	finally
      //   64	114	172	java/lang/RuntimeException
      //   114	121	172	java/lang/RuntimeException
      //   126	132	172	java/lang/RuntimeException
      //   165	169	172	java/lang/RuntimeException
    }

    public void setAccountType(Object paramObject)
    {
      try
      {
        this.accountType = paramObject;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    protected void setAuthToken(String paramString)
    {
      try
      {
        this.authtoken = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    protected void setCaptchaImageUrl(String paramString)
    {
      try
      {
        if ((paramString.startsWith("http://")) || (paramString.startsWith("https://")));
        for (this.captchaImageUrl = paramString; ; this.captchaImageUrl = (this.accountsUrl + paramString))
          return;
      }
      finally
      {
      }
    }

    public void setCaptchaResponse(String paramString)
    {
      try
      {
        this.captchaResponse = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setCaptchaToken(String paramString)
    {
      try
      {
        this.captchaToken = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setPassword(String paramString)
    {
      try
      {
        this.password = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setService(String paramString)
    {
      try
      {
        this.service = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setUserName(String paramString)
    {
      try
      {
        this.username = paramString;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void submit(AbstractTask paramAbstractTask)
    {
      setTask(paramAbstractTask);
      StringBuffer localStringBuffer = new StringBuffer();
      try
      {
        localStringBuffer.append("Email=");
        localStringBuffer.append(IoUtil.encodeURL(this.username));
        localStringBuffer.append('&');
        localStringBuffer.append("Passwd=");
        localStringBuffer.append(IoUtil.encodeURL(this.password));
        localStringBuffer.append("&ignoreFirstCharCase=true");
        if (this.accountType != null)
        {
          localStringBuffer.append('&');
          localStringBuffer.append("accountType=");
          localStringBuffer.append(this.accountType);
        }
        localStringBuffer.append('&');
        localStringBuffer.append("service=");
        localStringBuffer.append(this.service);
        if ((this.captchaResponse != null) && (this.captchaToken != null))
        {
          localStringBuffer.append('&');
          localStringBuffer.append("logintoken=");
          localStringBuffer.append(this.captchaToken);
          localStringBuffer.append('&');
          localStringBuffer.append("logincaptcha=");
          localStringBuffer.append(this.captchaResponse);
        }
        this.request = this.factory.createAsyncHttpRequest(this.clientLoginUrl);
        this.request.setMethod("POST");
        this.request.setContentType("application/x-www-form-urlencoded");
        this.request.setPayload(new ByteArrayInputStream(localStringBuffer.toString().getBytes()));
        this.request.submit(new Task(this.runner, this));
        notifyRunning();
        return;
      }
      finally
      {
      }
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.common.async.ClientLoginService
 * JD-Core Version:    0.6.2
 */