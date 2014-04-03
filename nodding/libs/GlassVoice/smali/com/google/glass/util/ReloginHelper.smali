.class public Lcom/google/glass/util/ReloginHelper;
.super Ljava/lang/Object;
.source "ReloginHelper.java"


# static fields
.field public static final ACTION_HIDE_RELOGIN:Ljava/lang/String; = "com.google.glass.action.RELOGIN_HIDE"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/glass/util/ReloginHelper;->context:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public hideActiveItem()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/glass/util/ReloginHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.RELOGIN_HIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
