.class Lcom/google/glass/util/GlasswareResourceLoadingTask$3;
.super Ljava/lang/Object;
.source "GlasswareResourceLoadingTask.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/GlasswareResourceLoadingTask;->saveToDiskCache(J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/GlasswareResourceLoadingTask;

.field final synthetic val$data:[B

.field final synthetic val$fingerprint:J


# direct methods
.method constructor <init>(Lcom/google/glass/util/GlasswareResourceLoadingTask;J[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$3;,"Lcom/google/glass/util/GlasswareResourceLoadingTask.3;"
    iput-object p1, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->this$0:Lcom/google/glass/util/GlasswareResourceLoadingTask;

    iput-wide p2, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->val$fingerprint:J

    iput-object p4, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 329
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$3;,"Lcom/google/glass/util/GlasswareResourceLoadingTask.3;"
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->val$data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    .local p0, this:Lcom/google/glass/util/GlasswareResourceLoadingTask$3;,"Lcom/google/glass/util/GlasswareResourceLoadingTask.3;"
    iget-wide v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->val$fingerprint:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 324
    iget-object v0, p0, Lcom/google/glass/util/GlasswareResourceLoadingTask$3;->val$data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 325
    return-void
.end method
