.class public final Lcom/google/glass/phone/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/phone/b;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/glass/phone/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/glass/phone/b;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.glass.action.PHONE_CALL_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/phone/b;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "call_state"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->a(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/glass/app/GlassError;

    invoke-direct {v1}, Lcom/google/glass/app/GlassError;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/google/glass/d/i;->error_no_phone_number:I

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v2, Lcom/google/glass/d/i;->error_edit_contacts:I

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->b(I)Lcom/google/glass/app/GlassError;

    :goto_0
    invoke-virtual {v1, p0}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassActivity;)V

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    invoke-static {p0}, Lcom/google/glass/bluetooth/d;->a(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_2

    sget v0, Lcom/google/glass/d/i;->error_bluetooth_headset_not_active:I

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v2, Lcom/google/glass/d/i;->error_tap_connection_settings:I

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->b(I)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget-object v2, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->a(Lcom/google/glass/app/GlassError$OnConfirmAction;)Lcom/google/glass/app/GlassError;

    move-result-object v0

    sget v2, Lcom/google/glass/d/e;->ic_cloud_sad_big:I

    invoke-virtual {v0, v2}, Lcom/google/glass/app/GlassError;->c(I)Lcom/google/glass/app/GlassError;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/glass/phone/b;

    invoke-direct {v2, p0}, Lcom/google/glass/phone/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2}, Lcom/google/glass/phone/b;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/google/glass/d/i;->error_phone_in_use:I

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassError;->a(I)Lcom/google/glass/app/GlassError;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassError;->b(Z)Lcom/google/glass/app/GlassError;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/google/glass/bluetooth/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
