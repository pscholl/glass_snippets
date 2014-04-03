.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SourceType;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceType"
.end annotation


# static fields
.field public static final COMPANIONWARE:I = 0x2

.field public static final GLASSWARE:I = 0x0

.field public static final GLASS_DEVICE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$SourceType;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
