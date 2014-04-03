.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse$ResponseCode;
.super Ljava/lang/Object;
.source "LoggingNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResponseCode"
.end annotation


# static fields
.field public static final ERROR_MISSING_SESSION_ID:I = 0x1

.field public static final ERROR_MISSING_SOFTWARE_VERSION:I = 0x2

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse$ResponseCode;->this$0:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
