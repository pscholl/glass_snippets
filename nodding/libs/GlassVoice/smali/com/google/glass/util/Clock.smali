.class public interface abstract Lcom/google/glass/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Clock$Impl;,
        Lcom/google/glass/util/Clock$SettableClock;
    }
.end annotation


# virtual methods
.method public abstract currentTimeMillis()J
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract uptimeMillis()J
.end method
