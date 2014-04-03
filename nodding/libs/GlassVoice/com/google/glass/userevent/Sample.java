package com.google.glass.userevent;

import com.google.glass.predicates.Assert;

public class Sample
{
  private double average;
  private double[] lastValues;
  private double max;
  private double min;
  private int numSamples;
  private double q;
  private boolean wantAverage;
  private boolean wantMinMax;
  private boolean wantVariance;

  public Sample(int paramInt)
  {
    keepLast(paramInt);
    reset();
  }

  public double getAverage()
  {
    return this.average;
  }

  public double getMax()
  {
    return this.max;
  }

  public double getMin()
  {
    return this.min;
  }

  public int getNumSamples()
  {
    return this.numSamples;
  }

  public double[] getValues()
  {
    int i = Math.min(this.lastValues.length, this.numSamples);
    double[] arrayOfDouble = new double[i];
    for (int j = 0; j < i; j++)
      arrayOfDouble[j] = this.lastValues[((this.numSamples - j) % this.lastValues.length)];
    return arrayOfDouble;
  }

  public double getVariance()
  {
    if (this.numSamples <= 1)
      return 0.0D;
    return this.q / (-1 + this.numSamples);
  }

  public Sample keepLast(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.lastValues = new double[paramInt];
      return this;
    }
  }

  public void record(double paramDouble)
  {
    this.numSamples = (1 + this.numSamples);
    if (this.wantMinMax)
    {
      if (paramDouble < this.min)
        this.min = paramDouble;
      if (paramDouble > this.max)
        this.max = paramDouble;
    }
    double d1;
    double d2;
    if (this.wantAverage)
    {
      d1 = this.average;
      if (this.numSamples != 1)
        break label121;
      this.average = paramDouble;
      if (this.wantVariance)
      {
        d2 = this.q;
        if (this.numSamples != 1)
          break label148;
      }
    }
    label148: for (this.q = 0.0D; ; this.q = (d2 + (paramDouble - d1) * (paramDouble - this.average)))
    {
      if (this.lastValues.length > 0)
        this.lastValues[(this.numSamples % this.lastValues.length)] = paramDouble;
      return;
      label121: this.average = ((paramDouble + (-1 + this.numSamples) * this.average) / this.numSamples);
      break;
    }
  }

  public void record(float paramFloat)
  {
    record(paramFloat);
  }

  public void record(int paramInt)
  {
    record(paramInt);
  }

  public void record(long paramLong)
  {
    record(paramLong);
  }

  public void reset()
  {
    this.numSamples = 0;
    this.average = 0.0D;
    this.q = 0.0D;
    this.min = 1.7976931348623157E+308D;
    this.max = 4.9E-324D;
  }

  public Sample wantAverage()
  {
    this.wantAverage = true;
    return this;
  }

  public Sample wantMinMax()
  {
    this.wantMinMax = true;
    return this;
  }

  public Sample wantVariance()
  {
    this.wantVariance = true;
    return wantAverage();
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.glass.userevent.Sample
 * JD-Core Version:    0.6.2
 */