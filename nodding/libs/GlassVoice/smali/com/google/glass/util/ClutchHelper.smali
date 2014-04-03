.class public Lcom/google/glass/util/ClutchHelper;
.super Ljava/lang/Object;
.source "ClutchHelper.java"


# static fields
.field public static final ACTION_CLUTCH:Ljava/lang/String; = "com.google.android.glass.action.CLUTCH"

.field public static final ACTION_PEOPLE_GRID:Ljava/lang/String; = "com.google.glass.people.PEOPLE_UI"

.field public static final DECLUTCH_PRIORITY:I = 0x7fffffff

.field public static final EXTRA_ENGAGED:Ljava/lang/String; = "engaged"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBroadcastIntentFilter(I)Landroid/content/IntentFilter;
    .locals 2
    .parameter "priority"

    .prologue
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.glass.action.CLUTCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 43
    return-object v0
.end method
