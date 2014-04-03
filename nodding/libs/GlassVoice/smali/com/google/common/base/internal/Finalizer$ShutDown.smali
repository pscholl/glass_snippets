.class Lcom/google/common/base/internal/Finalizer$ShutDown;
.super Ljava/lang/Exception;
.source "Finalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/internal/Finalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShutDown"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/internal/Finalizer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>()V

    return-void
.end method
