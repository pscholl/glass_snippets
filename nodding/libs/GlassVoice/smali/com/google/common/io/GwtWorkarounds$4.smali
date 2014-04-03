.class final Lcom/google/common/io/GwtWorkarounds$4;
.super Ljava/io/OutputStream;
.source "GwtWorkarounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/GwtWorkarounds;->asOutputStream(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;


# direct methods
.method constructor <init>(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->close()V

    .line 172
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->flush()V

    .line 167
    return-void
.end method

.method public write(I)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/common/io/GwtWorkarounds$4;->val$output:Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->write(B)V

    .line 162
    return-void
.end method
