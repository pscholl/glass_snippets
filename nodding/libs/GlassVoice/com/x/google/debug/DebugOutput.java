package com.x.google.debug;

public class DebugOutput
{
  private String indent = "";
  private StringBuffer lineBuffer = new StringBuffer();
  private StringBuffer sb = new StringBuffer();

  public void deindent()
  {
    if (this.indent.length() > 0)
      this.indent = this.indent.substring(1);
  }

  public void indent()
  {
    this.indent += ' ';
  }

  public void print(String paramString)
  {
    this.lineBuffer.append(paramString);
  }

  public void println(String paramString)
  {
    this.sb.append(this.indent);
    this.sb.append(this.lineBuffer.toString());
    this.lineBuffer.setLength(0);
    this.sb.append(paramString);
    this.sb.append('\n');
  }

  public String toString()
  {
    if (this.lineBuffer.length() != 0)
      println("");
    return this.sb.toString();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.x.google.debug.DebugOutput
 * JD-Core Version:    0.6.2
 */