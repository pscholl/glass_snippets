.class final Lcom/google/glass/timeline/TimelineProvider$TimelineColumns;
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
    name = "TimelineColumns"
.end annotation


# static fields
.field public static final BUNDLE_COVER_STATUS:Ljava/lang/String; = "bundle_cover_status"

.field public static final BUNDLE_ID:Ljava/lang/String; = "bundle_id"

.field public static final CLOUD_SYNC_PROTOCOL:Ljava/lang/String; = "sync_protocol"

.field public static final CLOUD_SYNC_STATUS:Ljava/lang/String; = "sync_status"

.field public static final CREATION_TIME:Ljava/lang/String; = "creation_time"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "delivery_time"

.field public static final DISPLAY_TIME:Ljava/lang/String; = "display_time"

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "expiration_time"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final PIN_SCORE:Ljava/lang/String; = "pin_score"

.field public static final PIN_TIME:Ljava/lang/String; = "pin_time"

.field public static final PROTOBUF_BLOB:Ljava/lang/String; = "protobuf_blob"

.field public static final SOURCE:Ljava/lang/String; = "source"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
