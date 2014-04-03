package com.google.glass.util;

public class SelectionBuilder
{
  private String[] args;
  private String selection;

  public SelectionBuilder()
  {
    this(null, null);
  }

  public SelectionBuilder(String paramString, String[] paramArrayOfString)
  {
    if (paramString == null)
      paramString = "";
    this.selection = paramString;
    if (paramArrayOfString == null)
      paramArrayOfString = new String[0];
    this.args = paramArrayOfString;
  }

  public void addSelection(SelectionBuilder paramSelectionBuilder)
  {
    if (paramSelectionBuilder.args.length == 0)
      return;
    if (this.selection.equals(""))
    {
      this.selection = paramSelectionBuilder.selection;
      this.args = ((String[])paramSelectionBuilder.getArguments().clone());
      return;
    }
    this.selection = ("(" + this.selection + ") AND (" + paramSelectionBuilder.selection + ")");
    String[] arrayOfString = new String[this.args.length + paramSelectionBuilder.args.length];
    System.arraycopy(this.args, 0, arrayOfString, 0, this.args.length);
    System.arraycopy(paramSelectionBuilder.args, 0, arrayOfString, this.args.length, paramSelectionBuilder.args.length);
    this.args = arrayOfString;
  }

  public void addSelection(String paramString1, String paramString2)
  {
    if (this.selection.equals(""))
    {
      this.selection = paramString1;
      if (paramString2 == null)
        this.args = new String[0];
    }
    do
    {
      return;
      this.args = new String[] { paramString2 };
      return;
      this.selection = ("(" + this.selection + ") AND (" + paramString1 + ")");
    }
    while (paramString2 == null);
    String[] arrayOfString = new String[1 + this.args.length];
    System.arraycopy(this.args, 0, arrayOfString, 0, this.args.length);
    arrayOfString[this.args.length] = paramString2;
    this.args = arrayOfString;
  }

  public String[] getArguments()
  {
    return this.args;
  }

  public String getSelection()
  {
    return this.selection;
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.util.SelectionBuilder
 * JD-Core Version:    0.6.2
 */