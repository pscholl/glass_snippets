.class final Lcom/google/common/io/ByteStreams$5;
.super Ljava/lang/Object;
.source "ByteStreams.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/ByteStreams;->asOutputSupplier(Lcom/google/common/io/ByteSink;)Lcom/google/common/io/OutputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<TS;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sink:Lcom/google/common/io/ByteSink;


# direct methods
.method constructor <init>(Lcom/google/common/io/ByteSink;)V
    .locals 0
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/google/common/io/ByteStreams$5;->val$sink:Lcom/google/common/io/ByteSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$5;->val$sink:Lcom/google/common/io/ByteSink;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/google/common/io/ByteStreams$5;->getOutput()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
