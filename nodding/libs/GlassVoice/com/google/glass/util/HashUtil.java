package com.google.glass.util;

import android.accounts.Account;
import android.content.Context;
import com.google.glass.auth.AuthUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashUtil
{
  private static final char[] HEX_CHARS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final String MD5 = "MD5";

  private static byte[] hash(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest.digest(paramArrayOfByte);
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new RuntimeException("No such algorithm exception " + paramString);
  }

  public static String hashPiiField(Context paramContext, String paramString)
  {
    Account localAccount = new AuthUtils(paramContext).getGoogleAccount();
    if (localAccount != null)
      return toMD5String(localAccount.name + "_" + paramString);
    return toMD5String(paramString);
  }

  public static String toMD5String(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int k : hash(paramString.getBytes(), "MD5"))
      localStringBuilder.append(HEX_CHARS[((k & 0xF0) >> 4)]).append(HEX_CHARS[(k & 0xF)]);
    return localStringBuilder.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.HashUtil
 * JD-Core Version:    0.6.2
 */