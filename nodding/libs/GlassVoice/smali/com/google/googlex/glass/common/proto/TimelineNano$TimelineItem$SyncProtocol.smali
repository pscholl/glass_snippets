.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncProtocol;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyncProtocol"
.end annotation


# static fields
.field public static final ALWAYS:I = 0x0

.field public static final NEVER:I = 0x2

.field public static final OPPORTUNISTIC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncProtocol;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
