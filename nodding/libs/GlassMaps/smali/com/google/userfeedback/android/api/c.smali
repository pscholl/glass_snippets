.class public final Lcom/google/userfeedback/android/api/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/userfeedback/android/api/c;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/userfeedback/android/api/c;->b:[B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/c;->b:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/userfeedback/android/api/c;->c:Ljava/lang/String;

    return-object v0
.end method
