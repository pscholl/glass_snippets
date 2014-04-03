.class final Lcom/google/glass/timeline/TimelineHelper$6;
.super Ljava/lang/Object;
.source "TimelineHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->formatAndSpeakText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$networkUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$6;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$6;->val$networkUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2100
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineHelper$6;->val$networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2101
    return-void
.end method
