.class Lcom/google/glass/voice/network/DirectGwsRequest$1;
.super Ljava/lang/Object;
.source "DirectGwsRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

.field final synthetic val$canUseSignIn:Z

.field final synthetic val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/DirectGwsRequest;Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    iput-object p2, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$query:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$canUseSignIn:Z

    iput-object p4, p0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 73
    new-instance v23, Lcom/google/glass/voice/network/SearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$query:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v23, sqb:Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 75
    const-string v25, "persist.search.server"

    const-string v26, ""

    invoke-static/range {v25 .. v26}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 76
    .local v22, sandboxId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 77
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setSandboxHost(Ljava/lang/String;)V

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/voice/network/DirectGwsRequest;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v7

    .line 82
    .local v7, client:Lorg/apache/http/client/HttpClient;
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v20, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v25, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v26, v0

    #getter for: Lcom/google/glass/voice/network/DirectGwsRequest;->locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;
    invoke-static/range {v26 .. v26}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$000(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;-><init>(Lcom/google/glass/location/LocationManagerHelper;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v14

    .line 87
    .local v14, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 89
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v26, "Host"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 90
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v25, v0

    #getter for: Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static/range {v25 .. v25}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, beforeCookie:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 96
    const-string v25, "Cookie"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$canUseSignIn:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    new-instance v25, Lcom/google/glass/util/SettingsHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v26, v0

    #getter for: Lcom/google/glass/voice/network/DirectGwsRequest;->context:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$200(Lcom/google/glass/voice/network/DirectGwsRequest;)Landroid/content/Context;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/google/glass/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v25 .. v25}, Lcom/google/glass/util/SettingsHelper;->isGuestModeEnabled()Z

    move-result v25

    if-nez v25, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v25, v0

    #getter for: Lcom/google/glass/voice/network/DirectGwsRequest;->authUtils:Lcom/google/glass/auth/AuthUtils;
    invoke-static/range {v25 .. v25}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$300(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v25

    const-string v26, "oauth2:https://www.googleapis.com/auth/googlenow"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    .line 102
    .local v18, loginOauth:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 103
    const-string v25, "Authorization"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Bearer "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v18           #loginOauth:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v25

    const-string v26, "Sending GWS request: %s"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v23, v27, v28

    invoke-interface/range {v25 .. v27}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :try_start_0
    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 113
    .local v21, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    .line 114
    .local v24, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 115
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid response from server: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v24           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v10

    .line 156
    .local v10, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v25

    const-string v26, "Exception sending GWS request"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v10, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Lcom/google/glass/voice/network/GwsResponseHandler;->onError(Ljava/lang/Exception;)V

    .line 159
    .end local v10           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 119
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v24       #status:Lorg/apache/http/StatusLine;
    :cond_5
    :try_start_1
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 120
    .local v5, allHeaders:[Lorg/apache/http/Header;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, cookieList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_7

    .line 122
    aget-object v13, v5, v15

    .line 123
    .local v13, h:Lorg/apache/http/Header;
    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "Set-Cookie"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 124
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 127
    .end local v13           #h:Lorg/apache/http/Header;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->this$0:Lcom/google/glass/voice/network/DirectGwsRequest;

    move-object/from16 v25, v0

    #getter for: Lcom/google/glass/voice/network/DirectGwsRequest;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static/range {v25 .. v25}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$100(Lcom/google/glass/voice/network/DirectGwsRequest;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v8}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    .line 130
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 131
    .local v17, is:Ljava/io/InputStream;
    new-instance v25, Ljava/io/InputStreamReader;

    sget-object v26, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static/range {v25 .. v25}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v12

    .line 133
    .local v12, fullResponse:Ljava/lang/String;
    new-instance v19, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct/range {v19 .. v19}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 134
    .local v19, pinholePage:Lcom/google/glass/voice/network/PinholePage;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/google/glass/voice/network/PinholePage;->updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V

    .line 138
    const-string v25, "act0"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v3

    .line 140
    .local v3, action:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v3, :cond_8

    .line 141
    invoke-virtual {v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, actionString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/google/glass/voice/network/GwsResponseHandler;->onActionResult(Ljava/lang/String;)V

    .line 147
    .end local v4           #actionString:Ljava/lang/String;
    :cond_8
    const-string v25, "ans0"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v9

    .line 149
    .local v9, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v9, :cond_9

    .line 150
    invoke-static {}, Lcom/google/glass/voice/network/DirectGwsRequest;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v25

    const-string v26, "Got a doc from the pinhole results."

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-interface/range {v25 .. v27}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/google/glass/voice/network/GwsResponseHandler;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/DirectGwsRequest$1;->val$handler:Lcom/google/glass/voice/network/GwsResponseHandler;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/google/glass/voice/network/GwsResponseHandler;->onNoResults()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
