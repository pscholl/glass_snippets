.class public final Lcom/google/glass/companion/Proto$LocationRequest$Priority;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Priority"
.end annotation


# static fields
.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x2

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x1

.field public static final PRIORITY_UNKNOWN:I


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$LocationRequest;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$LocationRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationRequest$Priority;->this$0:Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
