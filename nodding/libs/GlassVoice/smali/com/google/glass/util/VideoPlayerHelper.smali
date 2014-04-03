.class public Lcom/google/glass/util/VideoPlayerHelper;
.super Ljava/lang/Object;
.source "VideoPlayerHelper.java"


# static fields
.field public static final EXTRA_TIMELINE_ID:Ljava/lang/String; = "timeline_id"

.field public static final EXTRA_URL:Ljava/lang/String; = "video_url"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/google/glass/util/VideoPlayerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/VideoPlayerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
