.class public interface abstract Lcom/google/common/util/concurrent/Service$Listener;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
.end method

.method public abstract running()V
.end method

.method public abstract starting()V
.end method

.method public abstract stopping(Lcom/google/common/util/concurrent/Service$State;)V
.end method

.method public abstract terminated(Lcom/google/common/util/concurrent/Service$State;)V
.end method
