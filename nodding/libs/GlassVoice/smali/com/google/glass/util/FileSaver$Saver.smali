.class public interface abstract Lcom/google/glass/util/FileSaver$Saver;
.super Ljava/lang/Object;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Saver"
.end annotation


# virtual methods
.method public abstract getEstimatedSizeBytes()J
.end method

.method public abstract save(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
