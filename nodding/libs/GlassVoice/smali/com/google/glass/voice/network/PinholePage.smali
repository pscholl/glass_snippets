.class public Lcom/google/glass/voice/network/PinholePage;
.super Ljava/lang/Object;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    }
.end annotation


# static fields
.field public static final ACTION_ANSWER_ECT:Ljava/lang/String; = "act0"

.field public static final END_OF_CARD_MARKER_ECT:Ljava/lang/String; = "eoc"

.field private static final GLASS_CARD_CLASS:Ljava/lang/String; = "gls-crd"

.field public static final MAIN_ANSWER_CARD_ECT:Ljava/lang/String; = "ans0"

.field private static final PELLET_SEPARATOR_PATTERN:Ljava/lang/String; = "/\\*\"\"\\*/"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private blobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation
.end field

.field private headerBuilder:Ljava/lang/StringBuilder;

.field private headerComplete:Z

.field private responseComplete:Z

.field private unparsedPelletFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    return-void
.end method

.method private addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "pellet"

    .prologue
    const/4 v7, 0x0

    .line 145
    :try_start_0
    const-string v4, "u"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, url:Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 148
    .local v0, blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v0, v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v0       #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "pellet %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleJsonBlobs(Ljava/lang/String;)V
    .locals 9
    .parameter "jsonBlob"

    .prologue
    const/4 v8, 0x0

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, source:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    :cond_0
    return-void

    .line 94
    :cond_1
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 95
    const-string v4, "/\\*\"\"\\*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, pellets:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 97
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/glass/voice/network/PinholePage;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 98
    .local v1, pellet:Lorg/json/JSONObject;
    if-nez v1, :cond_3

    .line 99
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v4, :cond_2

    .line 100
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet in handleJsonBlobs."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "pellet %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v0

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/PinholePage;->addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "source"

    .prologue
    .line 136
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .locals 8
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-boolean v6, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v6, :cond_1

    move-object v0, v5

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    const/4 v4, 0x0

    .line 169
    .local v4, result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v6, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 170
    .local v0, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v4, :cond_3

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getBaseUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?ect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, newUrl:Ljava/lang/String;
    new-instance v4, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v4           #result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v4, v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 174
    .end local v2           #newUrl:Ljava/lang/String;
    .restart local v4       #result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_3
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    const-string v6, "ans0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    invoke-virtual {v4}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 183
    .local v3, originalText:Ljava/lang/CharSequence;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #setter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v4, v6}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$002(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 184
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    .end local v3           #originalText:Ljava/lang/CharSequence;
    :cond_4
    const-string v6, "ans0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 188
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    .end local v0           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_5
    const-string v6, "ans0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object v0, v5

    .line 193
    goto/16 :goto_0

    :cond_6
    move-object v0, v4

    .line 195
    goto/16 :goto_0
.end method

.method public getPinholeDocuments()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 2
    .parameter "output"

    .prologue
    .line 112
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 116
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 120
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 130
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    goto :goto_0
.end method
