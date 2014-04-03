.class public interface abstract Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;
.super Ljava/lang/Object;
.source "BinaryExponentialBackoff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BinaryExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/google/glass/util/BinaryExponentialBackoff;)V
.end method

.method public abstract onSuccess(Lcom/google/glass/util/BinaryExponentialBackoff;)V
.end method

.method public abstract onTry(Lcom/google/glass/util/BinaryExponentialBackoff;I)V
.end method
