.class final Lcom/google/glass/timeline/TimelineProvider$PendingActionColumns;
.super Ljava/lang/Object;
.source "TimelineProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingActionColumns"
.end annotation


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"

.field public static final TIMELINE_ID:Ljava/lang/String; = "timeline_id"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
