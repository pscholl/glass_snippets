.class public Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;
.super Lcom/x/google/common/async/AbstractRequest;

# interfaces
.implements Lcom/x/google/common/async/LoginRequest;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/async/ClientLoginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginRequestImpl"
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_STRING:Ljava/lang/String; = "accountType="

.field private static final AMPERSAND_CHAR:C = '&'

.field private static final AUTH_STRING:Ljava/lang/String; = "Auth="

.field private static final CAPTCHA_TOKEN:Ljava/lang/String; = "CaptchaToken="

.field private static final CAPTCHA_URL:Ljava/lang/String; = "CaptchaUrl="

.field private static final CLIENT_LOGIN_STRING:Ljava/lang/String; = "ClientLogin"

.field private static final EMAIL_STRING:Ljava/lang/String; = "Email="

.field private static final IGNORE_FIRST_CHAR_CASE:Ljava/lang/String; = "&ignoreFirstCharCase=true"

.field private static final LOGIN_CAPTCHA_RESPONSE_STRING:Ljava/lang/String; = "logincaptcha="

.field private static final LOGIN_CAPTCHA_TOKEN_STRING:Ljava/lang/String; = "logintoken="

.field private static final PASSWORD_STRING:Ljava/lang/String; = "Passwd="

.field private static final SERVICE_STRING:Ljava/lang/String; = "service="


# instance fields
.field private accountType:Ljava/lang/Object;

.field private final accountsUrl:Ljava/lang/String;

.field private authtoken:Ljava/lang/String;

.field private captchaImageUrl:Ljava/lang/String;

.field private captchaResponse:Ljava/lang/String;

.field private captchaToken:Ljava/lang/String;

.field private final clientLoginUrl:Ljava/lang/String;

.field private factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

.field private password:Ljava/lang/String;

.field private request:Lcom/x/google/common/async/AsyncHttpRequest;

.field private responseCode:I

.field private runner:Lcom/x/google/common/task/TaskRunner;

.field private service:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/x/google/common/task/TaskRunner;Lcom/x/google/common/async/AsyncHttpRequestFactory;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/x/google/common/async/AbstractRequest;-><init>()V

    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->runner:Lcom/x/google/common/task/TaskRunner;

    iput-object p2, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iput-object p3, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountsUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClientLogin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->clientLoginUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getAccountType()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountType:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAuthToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->checkCompleted()V

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->authtoken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCaptchaImageUrl()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaImageUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCaptchaToken()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassword()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseCode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->responseCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getService()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->service:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected processLine(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Auth="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Auth="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->setAuthToken(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CaptchaToken="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CaptchaToken="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->setCaptchaToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CaptchaUrl="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CaptchaUrl="

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->setCaptchaImageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->hasException()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->close()V

    iput-object v3, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->responseCode:I

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseStream()Ljava/io/DataInputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/x/google/common/io/LineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v2}, Lcom/x/google/common/async/AsyncHttpRequest;->getResponseStream()Ljava/io/DataInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/x/google/common/io/LineReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v0}, Lcom/x/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->processLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    invoke-interface {v1}, Lcom/x/google/common/async/AsyncHttpRequest;->close()V

    iput-object v3, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->notifyCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "catch RuntimeException"

    invoke-static {v1, v0}, Lcom/x/google/debug/Log;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->notifyException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setAccountType(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountType:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setAuthToken(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->authtoken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setCaptchaImageUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaImageUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaImageUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptchaResponse(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptchaToken(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setService(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->service:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public submit(Lcom/x/google/common/task/AbstractTask;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->setTask(Lcom/x/google/common/task/AbstractTask;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    monitor-enter p0

    :try_start_0
    const-string v1, "Email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->username:Ljava/lang/String;

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "Passwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->password:Ljava/lang/String;

    invoke-static {v1}, Lcom/x/google/common/io/IoUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&ignoreFirstCharCase=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountType:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "accountType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->accountType:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaResponse:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "logintoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "logincaptcha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->captchaResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->factory:Lcom/x/google/common/async/AsyncHttpRequestFactory;

    iget-object v2, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->clientLoginUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/x/google/common/async/AsyncHttpRequestFactory;->createAsyncHttpRequest(Ljava/lang/String;)Lcom/x/google/common/async/AsyncHttpRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    const-string v2, "POST"

    invoke-interface {v1, v2}, Lcom/x/google/common/async/AsyncHttpRequest;->setMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v1, v2}, Lcom/x/google/common/async/AsyncHttpRequest;->setContentType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/x/google/common/async/AsyncHttpRequest;->setPayload(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->request:Lcom/x/google/common/async/AsyncHttpRequest;

    new-instance v1, Lcom/x/google/common/task/Task;

    iget-object v2, p0, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->runner:Lcom/x/google/common/task/TaskRunner;

    invoke-direct {v1, v2, p0}, Lcom/x/google/common/task/Task;-><init>(Lcom/x/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/x/google/common/async/AsyncHttpRequest;->submit(Lcom/x/google/common/task/AbstractTask;)V

    invoke-virtual {p0}, Lcom/x/google/common/async/ClientLoginService$LoginRequestImpl;->notifyRunning()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
