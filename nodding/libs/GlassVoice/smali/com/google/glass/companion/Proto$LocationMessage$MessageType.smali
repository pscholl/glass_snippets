.class public final Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$LocationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MessageType"
.end annotation


# static fields
.field public static final LOCATION_CHANGED:I = 0x0

.field public static final PROVIDER_DISABLED:I = 0x1

.field public static final PROVIDER_ENABLED:I = 0x2

.field public static final STATUS_CHANGED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$LocationMessage;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$LocationMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->this$0:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
