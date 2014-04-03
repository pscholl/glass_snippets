.class Lcom/google/userfeedback/android/api/UserFeedback$3;
.super Ljava/lang/Object;
.source "UserFeedback.java"

# interfaces
.implements Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/UserFeedback;->buildSubmitReport(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedback;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/UserFeedback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->this$0:Lcom/google/userfeedback/android/api/UserFeedback;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback$3;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;)V

    .line 265
    return-void
.end method
