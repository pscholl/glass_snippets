.class public abstract Lcom/x/google/common/util/Primitives$PrimitiveConverter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/util/Primitives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrimitiveConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract toInteger(I)Ljava/lang/Integer;
.end method

.method public abstract toLong(J)Ljava/lang/Long;
.end method
