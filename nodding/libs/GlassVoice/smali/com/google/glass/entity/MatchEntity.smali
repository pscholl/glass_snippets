.class public abstract Lcom/google/glass/entity/MatchEntity;
.super Landroid/os/AsyncTask;
.source "MatchEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;-><init>()V

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 42
    iput-object p1, p0, Lcom/google/glass/entity/MatchEntity;->context:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public addPhoneNumber(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 4
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Phone number was null or empty, not setting."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :goto_0
    return-object p0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object p1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    iput-object v2, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v1, v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v0, secondaryPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v2, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    goto :goto_0
.end method

.method public byPartialEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/glass/entity/EntityHelper;->clone(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/google/glass/entity/MatchEntity;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, entity:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v5, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 49
    .local v5, target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    iget-object v6, p0, Lcom/google/glass/entity/MatchEntity;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 50
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 51
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Searching for entity via phone numbers."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v0, allPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v6}, Lcom/google/glass/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->secondaryPhoneNumber:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    :cond_0
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v9, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/google/glass/entity/EntityHelper;->queryByPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Entity found via phone number."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v1

    .line 90
    .end local v0           #allPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 66
    .restart local v0       #allPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .restart local v3       #phoneNumber:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/google/glass/entity/EntityHelper;->queryBySecondaryPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Entity found via secondary phone number."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v1

    .line 70
    goto :goto_0

    .line 74
    .end local v0           #allPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_4
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 75
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Searching for entity via id."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->id:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_5

    .line 78
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Entity found via id."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_5
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 83
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Searching for entity via email address."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v6, v5, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/google/glass/entity/EntityHelper;->queryByEmail(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    sget-object v6, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Entity found via email address."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v1

    .line 87
    goto :goto_0

    .line 90
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->doInBackground([Ljava/lang/Void;)Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iget-object v0, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
.end method

.method public abstract onNoMatchFound()V
.end method

.method protected onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No entity found, sending to onNoMatchFound()."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/entity/MatchEntity;->onNoMatchFound()V

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Entity found, sending to onEntityMatched()."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onEntityMatched(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/entity/MatchEntity;->onPostExecute(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)V

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/glass/entity/MatchEntity;
    .locals 3
    .parameter "emailAddress"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/google/glass/entity/MatchEntity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Email address was null or empty, not setting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :goto_0
    return-object p0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/glass/entity/MatchEntity;->target:Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    iput-object p1, v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->email:Ljava/lang/String;

    goto :goto_0
.end method
