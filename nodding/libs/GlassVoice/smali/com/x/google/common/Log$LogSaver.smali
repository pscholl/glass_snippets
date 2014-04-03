.class public interface abstract Lcom/x/google/common/Log$LogSaver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogSaver"
.end annotation


# virtual methods
.method public abstract uploadEventLog(ZLjava/lang/Object;[B)Ljava/lang/Object;
.end method

.method public abstract uploadException(ZLjava/lang/String;Ljava/lang/Throwable;Lcom/x/google/common/Log$Printer;)V
.end method
