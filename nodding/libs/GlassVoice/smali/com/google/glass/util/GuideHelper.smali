.class public Lcom/google/glass/util/GuideHelper;
.super Ljava/lang/Object;
.source "GuideHelper.java"


# static fields
.field public static final ACTION_GUIDE_GREET:Ljava/lang/String; = "com.google.glass.action.GUIDE_GREET"

.field public static final EXTRA_BARCODE_KEY:Ljava/lang/String; = "barcode_value"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/google/glass/util/GuideHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/GuideHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/glass/util/GuideHelper;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public showAppointment(Ljava/lang/String;)V
    .locals 3
    .parameter "encryptedInvitationData"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/util/GuideHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.GUIDE_GREET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "barcode_value"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    return-void
.end method
