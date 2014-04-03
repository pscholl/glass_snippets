.class public interface abstract Lcom/google/glass/widget/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# virtual methods
.method public abstract createLoadingTask(Landroid/content/Context;Landroid/widget/FrameLayout;III)Lcom/google/glass/util/DeferredContentLoader$LoadingTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/FrameLayout;",
            "III)",
            "Lcom/google/glass/util/DeferredContentLoader$LoadingTask",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract drawListSize()I
.end method

.method public abstract getBackoffText(I)Ljava/lang/String;
.end method

.method public abstract getGroupCountType()Lcom/google/glass/widget/MosaicView$GroupCountType;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract sourceListSize()I
.end method
