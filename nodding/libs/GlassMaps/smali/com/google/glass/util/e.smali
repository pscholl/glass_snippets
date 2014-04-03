.class public final Lcom/google/glass/util/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/glass/bluetooth/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/util/d;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    const-string v1, "discoveringProcessReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/e;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/util/e;)Lcom/google/glass/bluetooth/a;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/e;->c:Lcom/google/glass/bluetooth/a;

    return-object v0
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/util/e;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/util/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/util/e;->b:Landroid/os/Handler;

    return-object v0
.end method
