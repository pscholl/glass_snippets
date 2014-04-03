.class public Lcom/x/google/common/async/ClientLoginService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/async/LoginService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCOUNTS_URL:Ljava/lang/String; = "https://www.google.com/accounts/"


# instance fields
.field private final accountsUrl:Ljava/lang/String;

.field private final factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

.field private final runner:Lcom/x/google/common/task/TaskRunner;


# direct methods
.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequestFactory;)V
    .locals 1

    const-string v0, "https://www.google.com/accounts/"

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/async/ClientLoginService;-><init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService;->runner:Lcom/x/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/x/google/common/async/ClientLoginService;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iput-object p3, p0, Lcom/x/google/common/async/ClientLoginService;->accountsUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createLoginRequest()Lcom/x/google/common/async/LoginRequest;
    .locals 4

    new-instance v0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService;->runner:Lcom/x/google/common/task/TaskRunner;

    iget-object v2, p0, Lcom/x/google/common/async/ClientLoginService;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iget-object v3, p0, Lcom/x/google/common/async/ClientLoginService;->accountsUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;-><init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V

    return-object v0
.end method
