.class public abstract Lcom/google/glass/util/IntentSender;
.super Ljava/lang/Object;
.source "IntentSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/IntentSender$DefaultIntentSender;
    }
.end annotation


# static fields
.field private static instance:Lcom/google/glass/util/IntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/IntentSender;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/glass/util/IntentSender$DefaultIntentSender;

    invoke-direct {v0}, Lcom/google/glass/util/IntentSender$DefaultIntentSender;-><init>()V

    sput-object v0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    .line 35
    :cond_0
    sget-object v0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    return-object v0
.end method

.method public static setInstance(Lcom/google/glass/util/IntentSender;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/predicates/Assert;->isTest()Z

    .line 43
    invoke-static {p0}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sput-object p0, Lcom/google/glass/util/IntentSender;->instance:Lcom/google/glass/util/IntentSender;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract sendOrderedBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract stopService(Landroid/content/Context;Landroid/content/Intent;)Z
.end method
