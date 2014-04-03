.class public abstract Lcom/google/glass/util/ba;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/glass/util/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/util/ba;->a:Lcom/google/glass/util/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/glass/util/ba;
    .locals 1

    sget-object v0, Lcom/google/glass/util/ba;->a:Lcom/google/glass/util/ba;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/glass/util/bb;

    invoke-direct {v0}, Lcom/google/glass/util/bb;-><init>()V

    sput-object v0, Lcom/google/glass/util/ba;->a:Lcom/google/glass/util/ba;

    :cond_0
    sget-object v0, Lcom/google/glass/util/ba;->a:Lcom/google/glass/util/ba;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
.end method
