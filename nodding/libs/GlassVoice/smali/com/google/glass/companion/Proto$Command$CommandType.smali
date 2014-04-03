.class public final Lcom/google/glass/companion/Proto$Command$CommandType;
.super Ljava/lang/Object;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CommandType"
.end annotation


# static fields
.field public static final START_DEBUG:I = 0x1

.field public static final STOP_DEBUG:I = 0x2

.field public static final UNPAIR:I


# instance fields
.field final synthetic this$0:Lcom/google/glass/companion/Proto$Command;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/Proto$Command;)V
    .locals 0
    .parameter

    .prologue
    .line 2613
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Command$CommandType;->this$0:Lcom/google/glass/companion/Proto$Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
