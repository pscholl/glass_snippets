package com.google.glass.widget.horizontalscroll;

import android.view.View;
import com.google.glass.predicates.Assert;

class CardStateManager
{
  private final Card item;
  private Card.State state = Card.State.UNLOADED;
  private final View view;

  public CardStateManager(View paramView)
  {
    Assert.assertNotNull(paramView);
    this.view = paramView;
    this.item = ((Card)paramView);
  }

  private void changeState(Card.State paramState1, Card.State paramState2)
  {
    if (this.state != paramState1)
      throw new IllegalStateException("Tried to change state from " + this.state + " to " + paramState2 + "; should be in state " + paramState1 + " before changing to " + paramState2);
    this.state = paramState2;
  }

  public View getView()
  {
    return this.view;
  }

  public void onFocus()
  {
    changeState(Card.State.LOADED, Card.State.FOCUSED);
    this.item.onFocus();
  }

  public void onLoad()
  {
    changeState(Card.State.UNLOADED, Card.State.LOADED);
    this.item.onLoad();
  }

  public void onSettled()
  {
    changeState(Card.State.FOCUSED, Card.State.SETTLED);
    this.item.onSettled();
  }

  public void onUnfocus()
  {
    if (this.state == Card.State.SETTLED)
    {
      changeState(Card.State.SETTLED, Card.State.FOCUSED);
      this.item.onUnsettled();
    }
    changeState(Card.State.FOCUSED, Card.State.LOADED);
    this.item.onUnfocus();
  }

  public void onUnload()
  {
    changeState(Card.State.LOADED, Card.State.UNLOADED);
    this.item.onUnload();
  }

  public void onUnsettled()
  {
    changeState(Card.State.SETTLED, Card.State.FOCUSED);
    this.item.onUnsettled();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.widget.horizontalscroll.CardStateManager
 * JD-Core Version:    0.6.2
 */