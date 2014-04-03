.class final Lcom/google/common/collect/Serialization$FieldSetter;
.super Ljava/lang/Object;
.source "Serialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Serialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldSetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 208
    .local p0, this:Lcom/google/common/collect/Serialization$FieldSetter;,"Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/google/common/collect/Serialization$FieldSetter;->field:Ljava/lang/reflect/Field;

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Field;Lcom/google/common/collect/Serialization$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    .local p0, this:Lcom/google/common/collect/Serialization$FieldSetter;,"Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Serialization$FieldSetter;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method set(Ljava/lang/Object;I)V
    .locals 3
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/google/common/collect/Serialization$FieldSetter;,"Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    .local p1, instance:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Serialization$FieldSetter;->field:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, impossible:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Lcom/google/common/collect/Serialization$FieldSetter;,"Lcom/google/common/collect/Serialization$FieldSetter<TT;>;"
    .local p1, instance:Ljava/lang/Object;,"TT;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Serialization$FieldSetter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, impossible:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
