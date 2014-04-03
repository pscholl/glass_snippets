.class public Lcom/google/glass/util/BinaryExponentialBackoff$SimpleCallbacks;
.super Ljava/lang/Object;
.source "BinaryExponentialBackoff.java"

# interfaces
.implements Lcom/google/glass/util/BinaryExponentialBackoff$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BinaryExponentialBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/google/glass/util/BinaryExponentialBackoff;)V
    .locals 0
    .parameter "retryAlgorithm"

    .prologue
    .line 31
    return-void
.end method

.method public onSuccess(Lcom/google/glass/util/BinaryExponentialBackoff;)V
    .locals 0
    .parameter "retryAlgorithm"

    .prologue
    .line 34
    return-void
.end method

.method public onTry(Lcom/google/glass/util/BinaryExponentialBackoff;I)V
    .locals 0
    .parameter "retryAlgorithm"
    .parameter "retryCount"

    .prologue
    .line 28
    return-void
.end method
