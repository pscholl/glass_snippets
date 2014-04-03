.class final Lcom/google/userfeedback/android/api/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/userfeedback/android/api/ah;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/userfeedback/android/api/m;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/q;->b:Lcom/google/userfeedback/android/api/m;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/q;->b:Lcom/google/userfeedback/android/api/m;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/userfeedback/android/api/m;->a(ZZLjava/lang/String;)V

    return-void
.end method
