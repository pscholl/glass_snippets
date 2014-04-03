.class public final Lcom/google/userfeedback/android/api/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->c(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/z;->a(I)Lcom/google/userfeedback/android/api/z;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->d(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->e(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->a(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    invoke-virtual {p0, v1}, Lcom/google/userfeedback/android/api/z;->f(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;

    return-void
.end method

.method public static a()Lcom/google/userfeedback/android/api/z;
    .locals 1

    new-instance v0, Lcom/google/userfeedback/android/api/z;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/z;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput p1, p0, Lcom/google/userfeedback/android/api/z;->c:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/google/userfeedback/android/api/aa;
    .locals 8

    const-string v0, "exceptionClassName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "throwFileName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "throwLineNumber not set"

    iget v0, p0, Lcom/google/userfeedback/android/api/z;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Z)V

    const-string v0, "throwClassName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "throwMethodName not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "stackTrace not set"

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/x/google/debug/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/userfeedback/android/api/aa;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/z;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/userfeedback/android/api/z;->b:Ljava/lang/String;

    iget v3, p0, Lcom/google/userfeedback/android/api/z;->c:I

    iget-object v4, p0, Lcom/google/userfeedback/android/api/z;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/z;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/userfeedback/android/api/z;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/userfeedback/android/api/z;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/userfeedback/android/api/aa;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/userfeedback/android/api/z;
    .locals 0

    iput-object p1, p0, Lcom/google/userfeedback/android/api/z;->g:Ljava/lang/String;

    return-object p0
.end method
