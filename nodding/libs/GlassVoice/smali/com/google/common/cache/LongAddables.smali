.class final Lcom/google/common/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    new-instance v2, Lcom/google/common/cache/LongAdder;

    invoke-direct {v2}, Lcom/google/common/cache/LongAdder;-><init>()V

    .line 38
    new-instance v0, Lcom/google/common/cache/LongAddables$1;

    invoke-direct {v0}, Lcom/google/common/cache/LongAddables$1;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v0, supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    :goto_0
    sput-object v0, Lcom/google/common/cache/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    .line 53
    return-void

    .line 44
    .end local v0           #supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    :catch_0
    move-exception v1

    .line 45
    .local v1, t:Ljava/lang/Throwable;
    new-instance v0, Lcom/google/common/cache/LongAddables$2;

    invoke-direct {v0}, Lcom/google/common/cache/LongAddables$2;-><init>()V

    .restart local v0       #supplier:Lcom/google/common/base/Supplier;,"Lcom/google/common/base/Supplier<Lcom/google/common/cache/LongAddable;>;"
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static create()Lcom/google/common/cache/LongAddable;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/common/cache/LongAddables;->SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LongAddable;

    return-object v0
.end method
