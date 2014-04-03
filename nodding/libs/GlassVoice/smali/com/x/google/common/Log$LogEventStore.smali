.class public interface abstract Lcom/x/google/common/Log$LogEventStore;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogEventStore"
.end annotation


# virtual methods
.method public abstract commit()V
.end method

.method public abstract readEvents()[B
.end method

.method public abstract writeEvents([B)V
.end method
