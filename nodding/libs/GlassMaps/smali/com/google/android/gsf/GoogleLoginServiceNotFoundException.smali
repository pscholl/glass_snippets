.class public Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;
.super Landroid/util/AndroidException;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gsf/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gsf/GoogleLoginServiceNotFoundException;->mErrorCode:I

    return v0
.end method
