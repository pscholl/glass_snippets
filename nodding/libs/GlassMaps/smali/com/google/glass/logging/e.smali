.class final Lcom/google/glass/logging/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/glass/logging/b;

.field final synthetic g:[Ljava/lang/String;

.field final synthetic h:Lcom/google/glass/util/Feedback$RecoveryAction;

.field final synthetic i:Lcom/google/glass/logging/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/FeedbackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/logging/b;[Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/glass/logging/e;->i:Lcom/google/glass/logging/FeedbackActivity;

    iput-object p2, p0, Lcom/google/glass/logging/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/logging/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/glass/logging/e;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/glass/logging/e;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/glass/logging/e;->e:Z

    iput-object p7, p0, Lcom/google/glass/logging/e;->f:Lcom/google/glass/logging/b;

    iput-object p8, p0, Lcom/google/glass/logging/e;->g:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/glass/logging/e;->h:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/glass/logging/e;->i:Lcom/google/glass/logging/FeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/FeedbackActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/e;->i:Lcom/google/glass/logging/FeedbackActivity;

    invoke-static {v1}, Lcom/google/glass/logging/FeedbackActivity;->b(Lcom/google/glass/logging/FeedbackActivity;)Lcom/google/glass/timeline/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/logging/e;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/logging/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/logging/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/glass/logging/e;->d:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/glass/logging/e;->e:Z

    iget-object v7, p0, Lcom/google/glass/logging/e;->f:Lcom/google/glass/logging/b;

    iget-object v8, p0, Lcom/google/glass/logging/e;->g:[Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/google/glass/logging/f;->a(Landroid/content/Context;Lcom/google/glass/timeline/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/glass/logging/b;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/glass/logging/e;->h:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-static {v0, v1}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/glass/logging/e;->h:Lcom/google/glass/util/Feedback$RecoveryAction;

    invoke-static {v0, v2}, Lcom/google/glass/util/Feedback;->a(Landroid/content/Context;Lcom/google/glass/util/Feedback$RecoveryAction;)V

    throw v1
.end method
