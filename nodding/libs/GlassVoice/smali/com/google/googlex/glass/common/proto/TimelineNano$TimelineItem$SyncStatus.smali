.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncStatus;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyncStatus"
.end annotation


# static fields
.field public static final NOT_SYNCED:I = 0x0

.field public static final SYNCED:I = 0x1

.field public static final SYNC_FAILED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SyncStatus;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
