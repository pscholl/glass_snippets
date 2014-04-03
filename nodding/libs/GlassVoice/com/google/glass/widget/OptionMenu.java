package com.google.glass.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.InflateException;
import com.google.glass.common.R.styleable;
import com.google.glass.predicates.Assert;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@Deprecated
public class OptionMenu
{
  private static final String TAG_MENU = "menu";
  private static final String TAG_MULTIPLE_STATE_ITEM = "state-item";
  private static final String TAG_SINGLE_STATE_ITEM = "item";
  private static final String TAG_STATE = "state";
  private final Context context;
  private final ArrayList<Item> items = new ArrayList();

  public OptionMenu(Context paramContext)
  {
    this.context = paramContext;
  }

  public static OptionMenu inflateFrom(Context paramContext, int paramInt)
  {
    return inflateFrom(new OptionMenu(paramContext), paramInt);
  }

  // ERROR //
  private static OptionMenu inflateFrom(OptionMenu paramOptionMenu, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 35	com/google/glass/widget/OptionMenu:context	Landroid/content/Context;
    //   6: invokevirtual 52	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   9: iload_1
    //   10: invokevirtual 58	android/content/res/Resources:getXml	(I)Landroid/content/res/XmlResourceParser;
    //   13: astore_2
    //   14: aload_0
    //   15: aload_2
    //   16: aload_2
    //   17: invokestatic 64	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   20: invokestatic 68	com/google/glass/widget/OptionMenu:parseMenu	(Lcom/google/glass/widget/OptionMenu;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Lcom/google/glass/widget/OptionMenu;
    //   23: astore 6
    //   25: aload_2
    //   26: ifnull +9 -> 35
    //   29: aload_2
    //   30: invokeinterface 73 1 0
    //   35: aload 6
    //   37: areturn
    //   38: astore 5
    //   40: new 75	android/view/InflateException
    //   43: dup
    //   44: ldc 77
    //   46: aload 5
    //   48: invokespecial 80	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   51: athrow
    //   52: astore 4
    //   54: aload_2
    //   55: ifnull +9 -> 64
    //   58: aload_2
    //   59: invokeinterface 73 1 0
    //   64: aload 4
    //   66: athrow
    //   67: astore_3
    //   68: new 75	android/view/InflateException
    //   71: dup
    //   72: ldc 77
    //   74: aload_3
    //   75: invokespecial 80	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   78: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	25	38	org/xmlpull/v1/XmlPullParserException
    //   2	25	52	finally
    //   40	52	52	finally
    //   68	79	52	finally
    //   2	25	67	java/io/IOException
  }

  private static Item parseItem(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.OptionMenuItem);
    int i = localTypedArray.getResourceId(0, -1);
    CharSequence localCharSequence = localTypedArray.getText(1);
    Drawable localDrawable = localTypedArray.getDrawable(2);
    localTypedArray.recycle();
    Item localItem = new Item(i, localCharSequence, localDrawable);
    if (localTypedArray.getBoolean(3, false))
      localItem.setDefault(true);
    return localItem;
  }

  private static OptionMenu parseMenu(OptionMenu paramOptionMenu, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    Context localContext = paramOptionMenu.context;
    if (!skipToStartTag(paramXmlPullParser, "menu"))
      throw new InflateException("<menu> tag not found!");
    int i = paramXmlPullParser.next();
    if (i != 1)
    {
      if ((i == 3) && (paramXmlPullParser.getName().equals("menu")))
        return paramOptionMenu;
      if (i == 2)
      {
        if (!paramXmlPullParser.getName().equals("item"))
          break label101;
        paramOptionMenu.addItem(parseItem(localContext, paramXmlPullParser, paramAttributeSet));
      }
      while (true)
      {
        i = paramXmlPullParser.next();
        break;
        label101: if (paramXmlPullParser.getName().equals("state-item"))
          paramOptionMenu.addItem(parseStateItem(localContext, paramXmlPullParser, paramAttributeSet));
        else
          skipCurrentTag(paramXmlPullParser);
      }
    }
    throw new InflateException("</menu> tag not found!");
  }

  private static Item parseStateItem(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.OptionMenuItem);
    int i = localTypedArray1.getResourceId(0, -1);
    localTypedArray1.recycle();
    Item localItem = new Item(i);
    if (localTypedArray1.getBoolean(3, false))
      localItem.setDefault(true);
    int j = paramXmlPullParser.next();
    if (j != 1)
    {
      if ((j == 3) && (paramXmlPullParser.getName().equals("state-item")))
        return localItem;
      if (j == 2)
      {
        if (!paramXmlPullParser.getName().equals("state"))
          break label173;
        TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.OptionMenuItem);
        int k = localTypedArray2.getResourceId(0, -1);
        CharSequence localCharSequence = localTypedArray2.getText(1);
        Drawable localDrawable = localTypedArray2.getDrawable(2);
        localTypedArray2.recycle();
        localItem.addState(new ItemState(k, localCharSequence, localDrawable));
      }
      while (true)
      {
        j = paramXmlPullParser.next();
        break;
        label173: skipCurrentTag(paramXmlPullParser);
      }
    }
    throw new InflateException("</state-item> tag not found!");
  }

  private static boolean skipCurrentTag(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    String str = paramXmlPullParser.getName();
    int i = paramXmlPullParser.getDepth();
    while (true)
    {
      int j = paramXmlPullParser.getEventType();
      if (j == 1)
        break;
      if ((j == 3) && (paramXmlPullParser.getName().equals(str)) && (paramXmlPullParser.getDepth() == i))
        return true;
      paramXmlPullParser.next();
    }
    return false;
  }

  private static boolean skipToStartTag(XmlPullParser paramXmlPullParser, String paramString)
    throws XmlPullParserException, IOException
  {
    while (true)
    {
      int i = paramXmlPullParser.getEventType();
      if ((i == 1) || ((i == 2) && (paramXmlPullParser.getName().equals(paramString))))
        return true;
      paramXmlPullParser.next();
    }
  }

  public void addAllItems(List<Item> paramList)
  {
    this.items.addAll(paramList);
  }

  public void addItem(int paramInt, String paramString)
  {
    addItem(new Item(paramInt, paramString, null));
  }

  public void addItem(int paramInt1, String paramString, int paramInt2)
  {
    if (paramInt2 == 0);
    for (Drawable localDrawable = null; ; localDrawable = this.context.getResources().getDrawable(paramInt2))
    {
      addItem(new Item(paramInt1, paramString, localDrawable));
      return;
    }
  }

  public void addItem(int paramInt, String paramString, Bitmap paramBitmap)
  {
    addItem(new Item(paramInt, paramString, new BitmapDrawable(paramBitmap)));
  }

  public void addItem(int paramInt, ItemState[] paramArrayOfItemState)
  {
    Item localItem = new Item(paramInt);
    int i = paramArrayOfItemState.length;
    for (int j = 0; j < i; j++)
      localItem.addState(paramArrayOfItemState[j]);
    addItem(localItem);
  }

  public void addItem(Item paramItem)
  {
    this.items.add(paramItem);
  }

  public void clearItems()
  {
    this.items.clear();
  }

  public Item findItem(int paramInt)
  {
    for (int i = 0; i < this.items.size(); i++)
      if (((Item)this.items.get(i)).itemId == paramInt)
        return (Item)this.items.get(i);
    return null;
  }

  public Item getEnabledItem(int paramInt)
  {
    for (int i = 0; i < this.items.size(); i++)
    {
      Item localItem = (Item)this.items.get(i);
      if (localItem.isEnabled())
      {
        int j = paramInt - 1;
        if (paramInt == 0)
          return localItem;
        paramInt = j;
      }
    }
    throw new ArrayIndexOutOfBoundsException("Position: " + paramInt + ", Enabled Items: " + getEnabledItemCount());
  }

  public int getEnabledItemCount()
  {
    int i = 0;
    for (int j = 0; j < this.items.size(); j++)
      if (((Item)this.items.get(j)).isEnabled)
        i++;
    return i;
  }

  public Item getItem(int paramInt)
  {
    return (Item)this.items.get(paramInt);
  }

  public int getItemCount()
  {
    return this.items.size();
  }

  public List<Item> getItems()
  {
    return this.items;
  }

  public Item getVisibleItem(int paramInt)
  {
    for (int i = 0; i < this.items.size(); i++)
    {
      Item localItem = (Item)this.items.get(i);
      if (localItem.isVisible())
      {
        int j = paramInt - 1;
        if (paramInt == 0)
          return localItem;
        paramInt = j;
      }
    }
    throw new ArrayIndexOutOfBoundsException("Position: " + paramInt + ", Visible Items: " + getVisibleItemCount());
  }

  public int getVisibleItemCount()
  {
    int i = 0;
    for (int j = 0; j < this.items.size(); j++)
      if (((Item)this.items.get(j)).isVisible)
        i++;
    return i;
  }

  public void inflateFrom(int paramInt)
  {
    inflateFrom(this, paramInt);
  }

  public void insertItem(int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    insertItem(paramInt1, paramInt2, paramString, this.context.getResources().getDrawable(paramInt3));
  }

  public void insertItem(int paramInt1, int paramInt2, String paramString, Drawable paramDrawable)
  {
    insertItem(paramInt1, new Item(paramInt2, paramString, paramDrawable));
  }

  public void insertItem(int paramInt, Item paramItem)
  {
    this.items.add(paramInt, paramItem);
  }

  public void removeItem(Item paramItem)
  {
    this.items.remove(paramItem);
  }

  public static class Item
  {
    private int currentStateKey = -1;
    private String description;
    private Object extra = null;
    private boolean isDefault;
    private boolean isEnabled = true;
    private boolean isVisible = true;
    private final int itemId;
    private OptionMenu.ItemStateListener stateListener;
    private final SparseArray<OptionMenu.ItemState> states;
    private boolean suppressTapSound;

    public Item(int paramInt)
    {
      this.itemId = paramInt;
      this.states = new SparseArray();
    }

    public Item(int paramInt, CharSequence paramCharSequence, Drawable paramDrawable)
    {
      this(paramInt);
      this.states.put(paramInt, new OptionMenu.ItemState(paramInt, paramCharSequence, paramDrawable));
      this.currentStateKey = paramInt;
    }

    public void addState(OptionMenu.ItemState paramItemState)
    {
      this.states.put(paramItemState.getId(), paramItemState);
      if (this.currentStateKey == -1)
        this.currentStateKey = paramItemState.getId();
    }

    public OptionMenu.ItemState getCurrentState()
    {
      return (OptionMenu.ItemState)this.states.get(this.currentStateKey);
    }

    public String getDescription()
    {
      return this.description;
    }

    public Object getExtra()
    {
      return this.extra;
    }

    public int getItemId()
    {
      return this.itemId;
    }

    public int getNumStates()
    {
      return this.states.size();
    }

    public OptionMenu.ItemState getState(int paramInt)
    {
      return (OptionMenu.ItemState)this.states.get(paramInt);
    }

    public boolean isDefault()
    {
      return this.isDefault;
    }

    public boolean isEnabled()
    {
      return this.isEnabled;
    }

    public boolean isVisible()
    {
      return this.isVisible;
    }

    public void setCurrentState(int paramInt)
    {
      setCurrentState(paramInt, true);
    }

    public void setCurrentState(int paramInt, boolean paramBoolean)
    {
      Assert.assertNotNull("Can not set current state to a non-existent state.", this.states.get(paramInt));
      this.currentStateKey = paramInt;
      if (this.stateListener != null)
        this.stateListener.onStateChanged(paramInt, paramBoolean);
    }

    public void setDefault(boolean paramBoolean)
    {
      this.isDefault = paramBoolean;
    }

    public void setDescription(String paramString)
    {
      this.description = paramString;
    }

    public void setEnabled(boolean paramBoolean)
    {
      this.isEnabled = paramBoolean;
    }

    public void setExtra(Object paramObject)
    {
      this.extra = paramObject;
    }

    public void setStateListener(OptionMenu.ItemStateListener paramItemStateListener)
    {
      this.stateListener = paramItemStateListener;
    }

    public void setSuppressTapSound(boolean paramBoolean)
    {
      this.suppressTapSound = paramBoolean;
    }

    public void setVisible(boolean paramBoolean)
    {
      this.isVisible = paramBoolean;
    }

    public boolean shouldSuppressTapSound()
    {
      return this.suppressTapSound;
    }
  }

  public static class ItemState
  {
    private final int id;
    private final Drawable image;
    private String imageUrl = null;
    private String name;

    public ItemState(int paramInt, CharSequence paramCharSequence, Drawable paramDrawable)
    {
      this.id = paramInt;
      this.name = paramCharSequence.toString();
      this.image = paramDrawable;
    }

    public ItemState(int paramInt, String paramString, Drawable paramDrawable)
    {
      this.id = paramInt;
      this.name = paramString;
      this.image = paramDrawable;
    }

    public final int getId()
    {
      return this.id;
    }

    public final Drawable getImage()
    {
      return this.image;
    }

    public String getImageUrl()
    {
      return this.imageUrl;
    }

    public final String getName()
    {
      return this.name;
    }

    public void setImageUrl(String paramString)
    {
      this.imageUrl = paramString;
    }

    public void setName(String paramString)
    {
      this.name = paramString;
    }

    public String toString()
    {
      return "[id=" + this.id + ", name='" + this.name + "', image=" + this.image + "]";
    }
  }

  public static abstract interface ItemStateListener
  {
    public abstract void onStateChanged(int paramInt, boolean paramBoolean);
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.OptionMenu
 * JD-Core Version:    0.6.2
 */