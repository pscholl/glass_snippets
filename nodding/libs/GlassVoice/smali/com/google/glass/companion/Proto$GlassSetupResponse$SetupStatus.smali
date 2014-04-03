.class public final Lcom/google/glass/companion/Proto$GlassSetupResponse$SetupStatus;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$GlassSetupResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SetupStatus"
.end annotation


# static fields
.field public static final FAILED:I = 0x2

.field public static final OK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$GlassSetupResponse;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$GlassSetupResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 3509
    iput-object p1, p0, Lcom/google/glass/companion/Proto$GlassSetupResponse$SetupStatus;->this$0:Lcom/google/glass/companion/Proto$GlassSetupResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
