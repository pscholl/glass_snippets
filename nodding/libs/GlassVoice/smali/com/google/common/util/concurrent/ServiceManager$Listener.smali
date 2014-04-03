.class public interface abstract Lcom/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract failure(Lcom/google/common/util/concurrent/Service;)V
.end method

.method public abstract healthy()V
.end method

.method public abstract stopped()V
.end method
