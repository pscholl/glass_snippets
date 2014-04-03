.class Lcom/google/userfeedback/android/api/PreviewActivity$2;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/PreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/userfeedback/android/api/PreviewActivity$2;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "currentView"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity$2;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(I)V

    .line 77
    iget-object v0, p0, Lcom/google/userfeedback/android/api/PreviewActivity$2;->this$0:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 78
    return-void
.end method
