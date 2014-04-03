.class public interface abstract Lcom/x/google/common/async/LoginRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/async/AsyncRequest;


# static fields
.field public static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/Object;

.field public static final ACCOUNT_TYPE_HOSTED:Ljava/lang/Object;

.field public static final ACCOUNT_TYPE_HOSTED_OR_GOOGLE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ACCOUNT_TYPE_GOOGLE"

    sput-object v0, Lcom/x/google/common/async/LoginRequest;->ACCOUNT_TYPE_GOOGLE:Ljava/lang/Object;

    const-string v0, "HOSTED"

    sput-object v0, Lcom/x/google/common/async/LoginRequest;->ACCOUNT_TYPE_HOSTED:Ljava/lang/Object;

    const-string v0, "HOSTED_OR_GOOGLE"

    sput-object v0, Lcom/x/google/common/async/LoginRequest;->ACCOUNT_TYPE_HOSTED_OR_GOOGLE:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract getAccountType()Ljava/lang/Object;
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getCaptchaImageUrl()Ljava/lang/String;
.end method

.method public abstract getCaptchaToken()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getService()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract setAccountType(Ljava/lang/Object;)V
.end method

.method public abstract setCaptchaResponse(Ljava/lang/String;)V
.end method

.method public abstract setCaptchaToken(Ljava/lang/String;)V
.end method

.method public abstract setPassword(Ljava/lang/String;)V
.end method

.method public abstract setService(Ljava/lang/String;)V
.end method

.method public abstract setUserName(Ljava/lang/String;)V
.end method
