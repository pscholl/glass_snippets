.class final Lcom/google/common/io/CharStreams$5;
.super Lcom/google/common/io/CharSource;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$supplier:Lcom/google/common/io/InputSupplier;


# direct methods
.method constructor <init>(Lcom/google/common/io/InputSupplier;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/common/io/CharStreams$5;->val$supplier:Lcom/google/common/io/InputSupplier;

    invoke-direct {p0}, Lcom/google/common/io/CharSource;-><init>()V

    return-void
.end method


# virtual methods
.method public openStream()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/common/io/CharStreams$5;->val$supplier:Lcom/google/common/io/InputSupplier;

    invoke-interface {v0}, Lcom/google/common/io/InputSupplier;->getInput()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Readable;

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->asReader(Ljava/lang/Readable;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
