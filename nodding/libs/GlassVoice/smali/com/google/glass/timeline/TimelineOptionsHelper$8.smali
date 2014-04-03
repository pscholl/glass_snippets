.class Lcom/google/glass/timeline/TimelineOptionsHelper$8;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

.field final synthetic val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1484
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iput-object p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 5

    .prologue
    .line 1487
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s cancelled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;->onDismissed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 1489
    return-void
.end method

.method public onDone()V
    .locals 5

    .prologue
    .line 1493
    invoke-static {}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "%s confirmed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    iget v4, v4, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1494
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$listener:Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->val$menuItem:Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-interface {v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;->onConfirmed(Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 1497
    :cond_0
    return-void
.end method
