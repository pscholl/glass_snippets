.class Lcom/google/common/io/CharStreams$StringCharSource$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams$StringCharSource$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field lines:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharStreams$StringCharSource$1;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 116
    invoke-static {}, Lcom/google/common/io/CharStreams$StringCharSource;->access$200()Lcom/google/common/base/Splitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->this$1:Lcom/google/common/io/CharStreams$StringCharSource$1;

    iget-object v1, v1, Lcom/google/common/io/CharStreams$StringCharSource$1;->this$0:Lcom/google/common/io/CharStreams$StringCharSource;

    #getter for: Lcom/google/common/io/CharStreams$StringCharSource;->string:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/common/io/CharStreams$StringCharSource;->access$100(Lcom/google/common/io/CharStreams$StringCharSource;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, next:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    .end local v0           #next:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/CharStreams$StringCharSource$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method
