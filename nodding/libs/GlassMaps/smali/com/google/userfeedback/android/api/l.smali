.class public final Lcom/google/userfeedback/android/api/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/l;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->b:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/google/userfeedback/android/api/e;->gf_header_background:I

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->c:I

    :goto_0
    return v0

    :cond_0
    const v0, 0x10800a5

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->e:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/google/userfeedback/android/api/l;->d:I

    return v0
.end method
