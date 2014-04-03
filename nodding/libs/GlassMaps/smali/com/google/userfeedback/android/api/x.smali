.class final Lcom/google/userfeedback/android/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method private constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/x;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/x;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/userfeedback/android/api/x;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/x;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/x;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/x;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->c(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V

    return-void
.end method
