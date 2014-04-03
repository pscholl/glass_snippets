.class Lcom/google/common/base/Optional$1$1;
.super Lcom/google/common/base/AbstractIterator;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/base/Optional",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/base/Optional$1;


# direct methods
.method constructor <init>(Lcom/google/common/base/Optional$1;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/common/base/Optional$1$1;->this$0:Lcom/google/common/base/Optional$1;

    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/google/common/base/Optional$1$1;->this$0:Lcom/google/common/base/Optional$1;

    iget-object v0, v0, Lcom/google/common/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 230
    :cond_0
    iget-object v1, p0, Lcom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/google/common/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 232
    .local v0, optional:Lcom/google/common/base/Optional;,"Lcom/google/common/base/Optional<+TT;>;"
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    .line 236
    .end local v0           #optional:Lcom/google/common/base/Optional;,"Lcom/google/common/base/Optional<+TT;>;"
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/base/Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
