.class public final Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ViewType;
.super Ljava/lang/Object;
.source "TimelineNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewType"
.end annotation


# static fields
.field public static final CALL:I = 0x6

.field public static final HANGOUT:I = 0x7

.field public static final HTML:I = 0x4

.field public static final IMAGE:I = 0x2

.field public static final MESSAGE:I = 0x1

.field public static final MUSIC:I = 0x9

.field public static final SEARCH:I = 0x5

.field public static final SOUND_SEARCH:I = 0x8

.field public static final TEXT:I = 0x0

.field public static final VIDEO:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem$ViewType;->this$0:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
