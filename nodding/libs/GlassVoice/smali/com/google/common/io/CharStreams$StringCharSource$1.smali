.class Lcom/google/common/io/CharStreams$StringCharSource$1;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams$StringCharSource;->lines()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/io/CharStreams$StringCharSource;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharStreams$StringCharSource;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/common/io/CharStreams$StringCharSource$1;->this$0:Lcom/google/common/io/CharStreams$StringCharSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/google/common/io/CharStreams$StringCharSource$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/CharStreams$StringCharSource$1$1;-><init>(Lcom/google/common/io/CharStreams$StringCharSource$1;)V

    return-object v0
.end method
