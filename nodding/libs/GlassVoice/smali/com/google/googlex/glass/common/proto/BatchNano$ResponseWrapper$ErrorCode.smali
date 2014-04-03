.class public final Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper$ErrorCode;
.super Ljava/lang/Object;
.source "BatchNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ErrorCode"
.end annotation


# static fields
.field public static final INTERNAL_ERROR:I = 0x4

.field public static final INVALID_PROTO:I = 0x3

.field public static final NETWORK_ERROR:I = 0x5

.field public static final NOT_AUTHORIZED:I = 0x2

.field public static final UNKNOWN_REQUEST:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper$ErrorCode;->this$0:Lcom/google/googlex/glass/common/proto/BatchNano$ResponseWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
