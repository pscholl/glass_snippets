.class public Lcom/x/google/debug/CommonLogger;
.super Lcom/x/google/debug/SimpleLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/x/google/debug/SimpleLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/x/google/common/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
