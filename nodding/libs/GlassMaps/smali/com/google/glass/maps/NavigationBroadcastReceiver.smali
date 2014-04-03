.class public Lcom/google/glass/maps/NavigationBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Lcom/google/glass/timeline/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>()V

    new-instance v0, Lcom/google/glass/timeline/d;

    invoke-direct {v0}, Lcom/google/glass/timeline/d;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->b:Lcom/google/glass/timeline/d;

    return-void
.end method

.method private static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "operation"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "menu_item_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/glass/logging/i;
    .locals 1

    sget-object v0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a:Lcom/google/glass/logging/i;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a:Lcom/google/glass/logging/i;

    const-string v2, "Received broadcast: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "wake_up"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/glass/maps/ao;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "foreground"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/maps/NavigationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/google/glass/maps/NavigationService;->a(Landroid/content/Context;)V

    const-string v0, "itemId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/NavigationBroadcastReceiver;->b:Lcom/google/glass/timeline/d;

    invoke-virtual {v1, p1, v0}, Lcom/google/glass/timeline/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/glass/maps/NavigationBroadcastReceiver;->a:Lcom/google/glass/logging/i;

    const-string v2, "Unknown operation: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/i;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
