.class Lcom/google/glass/timeline/TimelineHelper$5;
.super Ljava/lang/Object;
.source "TimelineHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineHelper;

.field final synthetic val$update:Lcom/google/glass/timeline/TimelineHelper$Update;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper;Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$5;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineHelper$5;->val$update:Lcom/google/glass/timeline/TimelineHelper$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$5;->this$0:Lcom/google/glass/timeline/TimelineHelper;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineHelper$5;->val$update:Lcom/google/glass/timeline/TimelineHelper$Update;

    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 624
    return-void
.end method
