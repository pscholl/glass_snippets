.class final Lcom/google/glass/logging/FormattingLoggers$1;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"

# interfaces
.implements Lcom/google/glass/logging/FormattingLoggers$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "level"
    .parameter "tag"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 58
    return-void
.end method
