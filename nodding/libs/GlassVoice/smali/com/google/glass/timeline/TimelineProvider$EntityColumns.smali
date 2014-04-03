.class final Lcom/google/glass/timeline/TimelineProvider$EntityColumns;
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
    name = "EntityColumns"
.end annotation


# static fields
.field public static final ENTITY_ID:Ljava/lang/String; = "entityId"

.field public static final ENTITY_TYPE:Ljava/lang/String; = "entityType"

.field public static final ENTITY_TYPE_CREATOR:I = 0x1

.field public static final ENTITY_TYPE_SHARE_TARGET:I = 0x2

.field public static final TIMELINE_ID:Ljava/lang/String; = "timelineId"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
