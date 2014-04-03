.class final Lcom/google/common/io/CharStreams$6;
.super Lcom/google/common/io/CharSink;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams;->asCharSink(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/CharSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$supplier:Lcom/google/common/io/OutputSupplier;


# direct methods
.method constructor <init>(Lcom/google/common/io/OutputSupplier;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/google/common/io/CharStreams$6;->val$supplier:Lcom/google/common/io/OutputSupplier;

    invoke-direct {p0}, Lcom/google/common/io/CharSink;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/common/io/CharStreams$6;->val$supplier:Lcom/google/common/io/OutputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/OutputSupplier;->getOutput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method
