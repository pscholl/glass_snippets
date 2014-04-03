.class public final Lcom/google/glass/bluetooth/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;

.field private static final b:Lcom/google/glass/logging/i;


# instance fields
.field private final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/b;->a:Lcom/google/glass/logging/i;

    sget-object v0, Lcom/google/glass/bluetooth/b;->a:Lcom/google/glass/logging/i;

    const-string v1, "stateChangeReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/j;->a(Lcom/google/glass/logging/i;Ljava/lang/String;)Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/bluetooth/b;->b:Lcom/google/glass/logging/i;

    return-void
.end method

.method static synthetic a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/bluetooth/b;->b:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method static synthetic a(Lcom/google/glass/bluetooth/b;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/bluetooth/b;->c:Ljava/util/Set;

    return-object v0
.end method
